require('blueballs.colors')
line = {
    a = {
        normal = { bg = accent, fg = basedark, gui = 'bold' },
        insert = { bg = green, fg = basedark, gui = 'bold' },
        visual = { bg = yellow, fg = basedark, gui = 'bold' },
        replace = { bg = red, fg = basedark, gui = 'bold' },
        command = { bg = purple, fg = basedark, gui = 'bold' }
    },
    b = { bg = bg2, fg = fg },
    c = { bg = bg1, fg = fg },
    inactive = { bg = bg0, fg = comment },

    return = {
        normal = {
            a = line.a.normal,
            b = line.b,
            c = line.c
        },
        insert = {
            a = line.a.insert,
            b = line.b,
            c = line.c
        },
        visual = {
            a = line.a.visual,
            b = line.b,
            c = line.c
        },
        replace = {
            a = line.a.replace,
            b = line.b,
            c = line.c
        },
        command = {
            a = line.a.command,
            b = line.b,
            c = line.c
        },
        inactive = {
            a = line.inactive,
            b = line.inactive,
            c = line.inactive
        }
    }
}

