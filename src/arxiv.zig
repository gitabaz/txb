const std = @import("std");
pub const taxonomy = @import("./taxonomy.zig");

pub const Entry = struct {
    id: []const u8,
    title: []const u8,
    published: []const u8,
    updated: []const u8,
    abs_link: []const u8,
    pdf_link: []const u8,
    summary: []const u8,
};

pub const SearchField = enum {
    Title,
    Author,
    Abstract,
    Comment,
    JournalReference,
    SubjectCategory,
    ReportNumber,
    Id,
    All,

    const Self = @This();

    pub fn toString(self: Self) []const u8 {
        return switch (self) {
            .Title => "ti:",
            .Author => "au:",
            .Abstract => "abs:",
            .Comment => "co:",
            .JournalReference => "jr:",
            .SubjectCategory => "cat:",
            .ReportNumber => "rn:",
            .Id => "id:",
            .All => "all:",
        };
    }
};

pub const BoolOp = enum {
    And,
    Or,
    Andnot,

    const Self = @This();

    pub fn toString(self: Self) []const u8 {
        return switch (self) {
            .And => "AND",
            .Or => "OR",
            .AndNot => "ANDNOT",
        };
    }
};

pub const SortBy = enum {
    Relevance,
    LastUpdatedDate,
    SubmittedDate,

    const Self = @This();

    pub fn toString(self: Self) []const u8 {
        return switch (self) {
            .Relevance => "&sortBy=relevance",
            .LastUpdatedDate => "&sortBy=lastUpdatedDate",
            .SubmittedDate => "&sortBy=submittedDate",
        };
    }
};

pub const SortOrder = enum {
    Ascending,
    Descending,

    const Self = @This();

    pub fn toString(self: Self) []const u8 {
        return switch (self) {
            .Ascending => "&sortOrder=ascending",
            .Descending => "&sortOrder=descending",
        };
    }
};

const MethodType = enum {
    SearchQuery,
    IdList,
    Start,
    MaxResults,

    const Self = @This();

    pub fn toString(self: Self) []const u8 {
        return switch (self) {
            .SearchQuery => "search_query=",
            .IdList => "id_list=",
            .Start => "start=",
            .MaxResults => "max_results=",
        };
    }
};

pub fn buildQuery(
    allocator: std.mem.Allocator,
    method_type: MethodType,
    field: SearchField,
    field_value: []const u8,
    sort_by: SortBy,
    sort_order: SortOrder,
) ![]const u8 {
    const base_url = "http://export.arxiv.org/api/query?";

    const url = try std.fmt.allocPrint(allocator, "{s}{s}{s}{s}{s}{s}", .{
        base_url,
        method_type.toString(),
        field.toString(),
        field_value,
        sort_by.toString(),
        sort_order.toString(),
    });

    return url;
}

test "SearchField toString" {
    var sf = SearchField.Title;
    try std.testing.expectEqualStrings("ti:", sf.toString());

    sf = SearchField.Author;
    try std.testing.expectEqualStrings("au:", sf.toString());

    sf = SearchField.Abstract;
    try std.testing.expectEqualStrings("abs:", sf.toString());

    sf = SearchField.Comment;
    try std.testing.expectEqualStrings("co:", sf.toString());

    sf = SearchField.JournalReference;
    try std.testing.expectEqualStrings("jr:", sf.toString());

    sf = SearchField.SubjectCategory;
    try std.testing.expectEqualStrings("cat:", sf.toString());

    sf = SearchField.ReportNumber;
    try std.testing.expectEqualStrings("rn:", sf.toString());

    sf = SearchField.Id;
    try std.testing.expectEqualStrings("id:", sf.toString());

    sf = SearchField.All;
    try std.testing.expectEqualStrings("all:", sf.toString());
}

test "SortOrder toString" {
    var so = SortOrder.Ascending;
    try std.testing.expectEqualStrings("&sortOrder=ascending", so.toString());

    so = SortOrder.Descending;
    try std.testing.expectEqualStrings("&sortOrder=descending", so.toString());
}

test "SortBy toString" {
    var sb = SortBy.Relevance;
    try std.testing.expectEqualStrings("&sortBy=relevance", sb.toString());

    sb = SortBy.LastUpdatedDate;
    try std.testing.expectEqualStrings("&sortBy=lastUpdatedDate", sb.toString());

    sb = SortBy.SubmittedDate;
    try std.testing.expectEqualStrings("&sortBy=submittedDate", sb.toString());
}

test "MethodType toString" {
    var mt = MethodType.SearchQuery;
    try std.testing.expectEqualStrings("search_query=", mt.toString());

    mt = MethodType.IdList;
    try std.testing.expectEqualStrings("id_list=", mt.toString());

    mt = MethodType.Start;
    try std.testing.expectEqualStrings("start=", mt.toString());

    mt = MethodType.MaxResults;
    try std.testing.expectEqualStrings("max_results=", mt.toString());
}

test "buildSearchQuery" {
    const allocator = std.testing.allocator;

    const exp_url = "http://export.arxiv.org/api/query?search_query=ti:\"electron thermal conductivity\"&sortBy=lastUpdatedDate&sortOrder=descending";

    const url = try buildQuery(
        allocator,
        .SearchQuery,
        .Title,
        "\"electron thermal conductivity\"",
        .LastUpdatedDate,
        .Descending,
    );
    defer allocator.free(url);

    try std.testing.expectEqualStrings(exp_url, url);
}
