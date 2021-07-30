require("blueballs.colors")
-- functions {{{
-- These functions were copied from NTBBloodbath's doom-one.nvim
-- https://github.com/NTBBloodbath/doom-one.nvim/blob/main/lua/doom-one/init.lua
local function high_clear(group)
    vim.api.nvim_command("hi! clear " .. group)
end

local function high_link(group, link)
    vim.api.nvim_command("hi! link " .. group .. " " .. link)
end

local function highlight(group, styles)
    local bg = styles.bg and "guibg=" .. styles.bg or "guibg=NONE"
    local fg = styles.fg and "guifg=" .. styles.fg or "guifg=NONE"
    local sp = styles.sp and "guisp=" .. styles.sp or "guisp=NONE"
    local gui = styles.gui and "gui=" .. styles.gui or "gui=NONE"

    vim.api.nvim_command("hi! " .. group .. " " .. bg .. " " .. fg .. " " .. sp .. " " .. gui)
end

local function apply_highlight(groups)
    for group, styles in pairs(groups) do
        highlight(group, styles)
    end
end
-- }}}

-- highlights {{{
vim.cmd("hi clear")
apply_highlight({
    -- general {{{
    Error = { fg = red, gui = "bold" },
    Info = { fg = blue, gui = "bold" },
    Success = { fg = green, gui = "bold" },
    Warning = { fg = orange, gui = "bold" },
    Question = { fg = accent, gui = "bold" },
    Special = { fg = purple },
    SpecialBold = { fg = purple, gui = "bold" },

    Underlined = { fg = accent, gui = "underline" },
    Directory = { fg = accent, gui = "bold" },
    Title = { fg = accent, gui = "bold" },
    -- }}}

    -- ui {{{
    Normal = { fg = fg, bg = bg },
    NormalPopover = { fg = fg, bg = bg2 },
    Visual = { bg = selection },
    VisualBold = { bg = selection, gui = "bold" },

    Search = { fg = fg, bg = accent },
    LineNr = { fg = comment, bg = bg0 },
    CursorLine = { bg = bg0 },
    CursorLineNr = { fg = accent1, bg = accent0 },
    Cursor = { fg = fg, bg = accent },
    TermCursor = { fg = fg, gui = "reverse" },
    SignColumn = { fg = fg, bg = bg0 },
    FoldColumn = { fg = accent, bg = bg0 },
    Folded = { fg = comment, bg = bg1, gui = "italic" },
    Conceal = { fg = fg2 },
    IndentGuide = { fg = comment },
    VertSplit = { fg = comment, bg = bg0 },

    StatusLine = { fg = fg, bg = bg2 },
    StatusLineNC = { fg = comment, bg = bg0 },

    Pmenu = { fg = fg, bg = bg2 },
    PmenuSbar = { bg = bg2 },
    PmenuThumb = { bg = accent },
    PmenuSel = { fg = fg, bg = accent },
    -- }}}

    -- syntax highlighting {{{
    Comment = { fg = comment },
    CommentBold = { fg = comment, gui = "bold" },
    SpecialComment = { fg = accent1, gui = "bold" },

    Number = { fg = orange },
    Float = { fg = orange1 },
    Boolean = { fg = orange, gui = "bold" },
    Character = { fg = orange1, gui = "italic" },
    String = { fg = orange },
    StringDelimiter = { fg = orange1 },

    Keyword = { fg = cyan },
    Constant = { fg = yellow },
    Type = { fg = green1 },
    TypeBuiltin = { fg = green1, gui = "bold" },
    Macro = { fg = pink, gui = "italic" },
    PreProc = { fg = pink },
    Include = { fg = pink, gui = "bold" },
    Identifier = { fg = pink1 },
    Delimiter = { fg = purple1 },
    VariableBuiltin = { fg = purple1 },
    Conditional = { fg = cyan, gui = "bold" },
    Statement = { fg = purple1, gui = "bold" },
    Structure = { fg = yellow1 },
    Function = { fg = green },
    Method = { fg = cyan1 },
    -- }}}

    -- lsp {{{
    LspDiagnosticsVirtualTextError = { fg = red1, bg = red0 },
    LspDiagnosticsVirtualTextWarning = { fg = orange1, bg = orange0 },
    LspDiagnosticsVirtualTextInformation = { fg = blue1, bg = blue0 },
    LspDiagnosticsVirtualTextHint = { fg = green1, bg = green0 },

    LspDiagnosticsSignError = { fg = red, bg = bg0 },
    LspDiagnosticsSignWarning = { fg = orange, bg = bg0 },
    LspDiagnosticsSignInformation = { fg = blue, bg = bg0 },
    LspDiagnosticsSignHint = { fg = green, bg = bg0 },

    LspDiagnosticsUnderlineError = { fg = red, gui = "underline" },
    LspDiagnosticsUnderlineWarning = { fg = orange, gui = "underline" },
    LspDiagnosticsUnderlineInformation = { fg = blue, gui = "underline" },
    LspDiagnosticsUnderlineHint = { fg = green, gui = "underline" },
    -- }}}

    -- plugins {{{
    -- whichkey {{{
    WhichKey = { fg = accent, gui = "bold" },
    WhichKeyDesc = { fg = fg },
    WhichKeySeparator = { fg = comment },
    WhichKeyGroup = { fg = accent },
    -- }}}

    -- nvim-tree {{{
    NvimTreeNormal = { fg = fg, bg = bg0 },
    NvimTreeSymlink = { fg = yellow1 },
    NvimTreeRootFolder = { fg = comment },
    NvimTreeExecFile = { fg = purple },
    NvimTreeImageFile = { fg = cyan },
    NvimTreeSpecialFile = { fg = pink },
    NvimTreeCursorLine = { bg = bg },
    -- }}}

    -- telescope {{{
    TelescopeNormal = { fg = fg, bg = bg2 },
    TelescopeBorder = { fg = comment, bg = bg2 },
    TelescopePromptBorder = { fg = accent, bg = bg2 },
    TelescopeMatching = { fg = cyan, gui = "bold" },
    TelescopeSelection = { bg = accent },
    TelescopeResultsIdentifier = { fg = fg },
    TelescopeMultiSelection = { fg = fg, bg = selection },
    -- }}}

    -- git-signs {{{
    GitSignsAdd = { fg = green, bg = bg0 },
    GitSignsChange = { fg = orange, bg = bg0 },
    GitSignsDelete = { fg = red, bg = bg0 },
    -- }}}

    -- nvim-ts-rainbow {{{
    rainbowcol1 = { fg = purple },
    rainbowcol2 = { fg = blue },
    rainbowcol3 = { fg = cyan },
    rainbowcol4 = { fg = green },
    rainbowcol5 = { fg = yellow },
    rainbowcol6 = { fg = orange },
    rainbowcol7 = { fg = pink },
    -- }}}
})
-- }}}

-- links {{{
-- general {{{
high_link("Noise", "Comment")
high_link("NonText", "CommentBold")
high_link("Whitespace", "Comment")
high_link("ErrorMsg", "Error")
-- }}}

-- ui {{{
high_link("CursorColumn", "CursorLine")
high_link("IndentGuideEven", "IndentGuide")
high_link("IndentGuideOdd", "IndentGuide")
high_link("IncSearch", "Search")
high_link("SpecialKey", "Special")
high_link("MatchParen", "Search")
high_link("Todo", "LspDiagnosticsVirtualTextWarning")
high_link("DiffAdd", "LspDiagnosticsVirtualTextHint")
high_link("DiffDelete", "LspDiagnosticsVirtualTextError")
high_link("DiffChange", "LspDiagnosticsVirtualTextWarning")
high_link("DiffText", "LspDiagnosticsVirtualTextInformation")
-- }}}

-- lsp {{{
high_link("LspDiagnosticsDefaultError", "Error")
high_link("LspDiagnosticsDefaultWarning", "Warning")
high_link("LspDiagnosticsDefaultInformation", "Info")
high_link("LspDiagnosticsDefaultHint", "Success")
-- }}}

-- treesitter {{{
high_link("TSConstructor", "Structure")
high_link("TSConstBuiltin", "Constant")
high_link("TSConstMacro", "Macro")
high_link("TSError", "Error")
high_link("TSFuncBuiltin", "Function")
high_link("TSStringRegex", "StringDelimiter")
high_link("TSStringEscape", "StringDelimiter")
high_link("TSWarning", "Warning")
high_link("TSDanger", "Error")
high_link("TSTypeBuiltin", "TypeBuiltin")
high_link("TSVariableBuiltin", "VariableBuiltin")
-- }}}

-- plugins {{{
-- nvim-tree {{{
high_link("NvimTreeGitDirty", "Warning")
high_link("NvimTreeGitStaged", "SpecialBold")
high_link("NvimTreeGitMerge", "Warning")
high_link("NvimTreeGitRenamed", "Info")
high_link("NvimTreeGitNew", "Success")
high_link("NvimTreeIndentMarker", "Comment")
-- }}}

-- telescope {{{
high_link("TelescopePreviewNormal", "TelescopeNormal")
-- }}}
-- }}}
-- }}}

-- options {{{
-- italic comments
if vim.g.blueballs_italic_comments == nil then
    vim.g.blueballs_italic_comments = true
end

if vim.g.blueballs_italic_comments then
    apply_highlight({
        Comment = { fg = comment, gui = "italic" },
        CommentBold = { fg = comment, gui = "bold,italic" },
        SpecialComment = { fg = accent1, gui = "bold,italic" },
    })
end

-- fringe
if vim.g.blueballs_hide_fringe == nil then
    vim.g.blueballs_hide_fringe = true
end

if vim.g.blueballs_hide_fringe then
    apply_highlight({
        EndOfBuffer = { fg = bg },
        NvimTreeEndOfBuffer = { fg = bg0 },
    })
end
-- }}}
