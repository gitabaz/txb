const std = @import("std");
const arxiv = @import("./arxiv.zig");
const taxonomy = arxiv.taxonomy;
const GroupID = arxiv.taxonomy.GroupID;
const request = @import("./request.zig");
const ui = @import("./ui.zig");

pub fn main() !void {
    std.debug.print("Terminal arXiv Browser\n", .{});

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer std.testing.expect(gpa.deinit() == .ok) catch @panic("leak");

    const allocator = gpa.allocator();

    const cat = taxonomy.groups[@intFromEnum(GroupID.Physics)].archives[1].categories[0].name;
    const req_url = try arxiv.buildQuery(
        allocator,
        .SearchQuery,
        .SubjectCategory,
        cat,
        .SubmittedDate,
        .Descending,
    );
    defer allocator.free(req_url);
    std.debug.print("req_url: {s}\n", .{req_url});

    // std.debug.print("Results from: {s}\n", .{cat});
    // try request.makeRequest(allocator, req_url);

    try ui.loop(allocator);
}
