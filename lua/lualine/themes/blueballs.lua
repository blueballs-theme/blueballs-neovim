require("blueballs.colors")
line = {
    a = {
        normal = { bg = accent, fg = bg, gui = "bold" },
        insert = { bg = green, fg = bg, gui = "bold" },
        visual = { bg = yellow, fg = bg, gui = "bold" },
        replace = { bg = red, fg = bg, gui = "bold" },
        command = { bg = purple, fg = bg, gui = "bold" },
    },
    b = { bg = bg2, fg = fg },
    c = { bg = bg1, fg = fg },
    inactive = { bg = bg0, fg = comment },
}

return {
    normal = {
        a = line.a.normal,
        b = line.b,
        c = line.c,
    },
    insert = {
        a = line.a.insert,
        b = line.b,
        c = line.c,
    },
    visual = {
        a = line.a.visual,
        b = line.b,
        c = line.c,
    },
    replace = {
        a = line.a.replace,
        b = line.b,
        c = line.c,
    },
    command = {
        a = line.a.command,
        b = line.b,
        c = line.c,
    },
    inactive = {
        a = line.inactive,
        b = line.inactive,
        c = line.inactive,
    },
}
