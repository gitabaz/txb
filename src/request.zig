const std = @import("std");
const xml = @import("./xml.zig");

pub fn makeRequest(allocator: std.mem.Allocator, req_url: []const u8) !void {
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
        const doc = try xml.parse(allocator, al.items);
        defer doc.deinit();

        var entry_it = doc.root.findChildrenByTag("entry");
        while (entry_it.next()) |c| {
            std.debug.print("{s}\n", .{c.getCharData("title").?});
        }
    }
}
