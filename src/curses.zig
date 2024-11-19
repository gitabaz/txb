const c = @import("./c.zig").c;

pub const Coords = struct {
    x: usize,
    y: usize,
};

pub const Window = c.WINDOW;

pub fn initScr() !*Window {
    const win = c.initscr();
    if (win == null) {
        return error.InitScr;
    }
    return win;
}

pub fn noEcho() !void {
    if (c.noecho() == c.ERR) {
        return error.NoEcho;
    }
}

pub fn printW(str: []const u8) void {
    _ = c.printw(str.ptr);
}

pub fn mvWPrintW(win: *Window, coords: Coords, str: []const u8) !void {
    const res = c.mvwprintw(win, @intCast(coords.y), @intCast(coords.x), str.ptr);
    if (res == c.ERR) {
        return error.MvWPrintW;
    }
}

pub fn refresh() !void {
    if (c.refresh() == c.ERR) {
        return error.Refresh;
    }
}

pub fn getCh() !usize {
    const ch = c.getch();
    if (ch == c.ERR) {
        return error.GetCh;
    } else {
        return @intCast(ch);
    }
}

pub fn addCh(ch: u8) !void {
    if (c.addch(ch) == c.ERR) {
        return error.AddCh;
    }
}

pub fn endWin() !void {
    if (c.endwin() == c.ERR) {
        return error.EndWin;
    }
}

pub fn getMaxYX(win: *Window) Coords {
    const x = c.getmaxx(win);
    const y = c.getmaxy(win);

    return .{ .x = @intCast(x), .y = @intCast(y) };
}

pub const Visibility = enum {
    Invisible,
    Visible,
    VeryVisible,
};

pub fn cursSet(vis: Visibility) !Visibility {
    const res = c.curs_set(@intFromEnum(vis));
    if (res > 2) {
        return error.CursSet;
    } else {
        const prev_vis: Visibility = @enumFromInt(res);
        return prev_vis;
    }
}

pub const Attr = enum(usize) {
    Normal = c.A_NORMAL, //Normal display (no highlight)
    Standout = c.A_STANDOUT, //Best highlighting mode of the terminal
    // = c.A_UNDERLINE, //Underlining
    // = c.A_REVERSE, //Reverse video
    // = c.A_BLINK, //Blinking
    // = c.A_DIM, //Half bright
    // = c.A_BOLD, //Extra bright or bold
    // = c.A_PROTECT, //Protected mode
    // = c.A_INVIS, //Invisible or blank mode
    // = c.A_ALTCHARSET, //Alternate character set
    // = c.A_ITALIC, //Italics (non-X/Open extension)
    // = c.A_CHARTEXT, //Bit-mask to extract a character
    // = c.A_COLOR, //Bit-mask to extract a color (legacy routines)
};

pub fn attrOn(attr: Attr) !void {
    const res = c.attron(@intCast(@intFromEnum(attr)));
    if (res == c.ERR) {
        return error.AttrOn;
    }
}

pub fn attrOff(attr: Attr) !void {
    const res = c.attroff(@intCast(@intFromEnum(attr)));
    if (res == c.ERR) {
        return error.AttrOff;
    }
}

pub fn clear() !void {
    if (c.clear() == c.ERR) {
        return error.Clear;
    }
}
