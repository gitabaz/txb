const std = @import("std");
const curses = @import("./curses.zig");

const options = [_][]const u8{
    "Latest (l)",
    "Search (/)",
    "Quit (q)",
};

pub fn mainMenu(win: *curses.Window) !usize {
    const name = "Terminal arXiv Browser";

    const screen_size = curses.getMaxYX(win);

    const name_coords = curses.Coords{
        .y = screen_size.y / 2,
        .x = (screen_size.x - name.len) / 2,
    };

    try curses.mvWPrintW(win, name_coords, name);

    var selected: usize = 0;
    while (true) {
        var menu_coords = name_coords;
        for (0.., options) |i, opt| {
            menu_coords.x = (screen_size.x - opt.len) / 2;
            menu_coords.y += 1;
            if (i == selected) {
                try curses.attrOn(.Standout);
                try curses.mvWPrintW(win, menu_coords, opt);
                try curses.attrOff(.Standout);
            } else {
                try curses.mvWPrintW(win, menu_coords, opt);
            }
        }
        try curses.refresh();
        const c = try curses.getCh();
        switch (c) {
            'q' => return 2,
            'j' => selected = (selected + 1) % options.len,
            'k' => selected = if (selected > 0) selected - 1 else options.len - 1,
            '\n' => return selected,
            else => continue,
        }
    }
}

pub fn latest(win: *curses.Window) !void {
    try curses.clear();
    const name = "Latest";

    const screen_size = curses.getMaxYX(win);

    const name_coords = curses.Coords{
        .y = screen_size.y / 2,
        .x = (screen_size.x - name.len) / 2,
    };

    try curses.mvWPrintW(win, name_coords, name);
    try curses.refresh();

    _ = try curses.getCh();
}

pub fn search(win: *curses.Window) !void {
    try curses.clear();
    const name = "Search";

    const screen_size = curses.getMaxYX(win);

    const name_coords = curses.Coords{
        .y = screen_size.y / 2,
        .x = (screen_size.x - name.len) / 2,
    };

    try curses.mvWPrintW(win, name_coords, name);
    try curses.refresh();

    _ = try curses.getCh();
}

pub fn loop(allocator: std.mem.Allocator) !void {
    _ = allocator;

    const win = try curses.initScr();
    defer curses.endWin() catch @panic("curses");

    try curses.noEcho();
    _ = try curses.cursSet(.Invisible);

    const selected = try mainMenu(win);

    switch (selected) {
        0 => try latest(win),
        1 => try search(win),
        options.len - 1 => return,
        else => {},
    }
}
