const std = @import("std");
const xml = @import("xml.zig");

pub fn main() !void {
    std.debug.print("Terminal arXiv Browser\n", .{});

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer std.testing.expect(gpa.deinit() == .ok) catch @panic("leak");

    const allocator = gpa.allocator();

    // const host = "export.arxiv.org";
    const req_url = "http://export.arxiv.org/api/query?search_query=au:%22aidan+zabalo%22";

    var client = std.http.Client{
        .allocator = allocator,
    };
    defer client.deinit();

    var al = std.ArrayList(u8).init(allocator);
    defer al.deinit();

    const res = try client.fetch(.{
        .response_storage = .{ .dynamic = &al },
        .method = .GET,
        .location = .{ .url = req_url },
    });

    if (res.status == .ok) {
        std.debug.print("OK\n", .{});
    }

    // std.debug.print("{s}\n", .{al.items});

    const doc = try xml.parse(allocator, al.items);
    defer doc.deinit();

    var entry_it = doc.root.findChildrenByTag("entry");
    while (entry_it.next()) |c| {
        std.debug.print("{s}\n", .{c.getCharData("title").?});
    }
}
