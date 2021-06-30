-- colors {{{
local selection = "#7b7e8c"
local comment = "#747dab"

local accent = "#4b74ad"
local accent0 = "#40587a"
local accent1 = "#8eb9f5"

local red = "#eb585f"
local red0 = "#8b2f33"
local red1 = "#f28b90"

local purple = "#b96be1"
local purple0 = "#8f41b7"
local purple1 = "#d49af2"

local pink = "#e871e1"
local pink0 = "#9b4996"
local pink1 = "#edabe9"

local blue = "#4e5fc9"
local blue0 = "#283275"
local blue1 = "#96a3f2"

local cyan = "#52e6da"
local cyan0 = "#378680"
local cyan1 = "#8ffff4"

local green = "#69d26e"
local green0 = "#357a38"
local green1 = "#96f29b"

local yellow = "#e1c85c"
local yellow0 = "#9f8c39"
local yellow1 = "f7e7a1"

local orange = "#d7953f"
local orange0 = "#9c6e31"
local orange1 = "#edc186"
-- }}}

-- functions {{{
-- These functions were copied from NTBBloodbath's doom-one.nvim
-- https://github.com/NTBBloodbath/doom-one.nvim/blob/main/lua/doom-one/init.lua
local function high_clear(group)
	vim.api.nvim_command('hi! clear ' .. group)
end

local function high_link(group, link)
	vim.api.nvim_command('hi! link ' .. group .. ' ' .. link)
end

local function highlight(group, styles)
	local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
	local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
	local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
	local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'

	vim.api.nvim_command(
		'hi! ' .. group .. ' ' .. bg .. ' ' .. fg .. ' ' .. sp .. ' ' .. gui
	)
end

local function apply_highlight(groups)
	for group, styles in pairs(groups) do
		highlight(group, styles)
	end
end
-- }}}

-- highlights {{{
vim.cmd('hi clear')
apply_highlight({
    -- general {{{
    Error = { fg = red, gui = 'bold' },
    Info = { fg = blue, gui = 'bold' },
    Success = { fg = green, gui = 'bold' },
    Warning = { fg = orange, gui = 'bold' },
    Question = { fg = accent, gui = 'bold' },
    Special = { fg = purple },
    SpecialBold = { fg = purple, gui = 'bold'},

    Underlined = { fg = accent, gui = 'underline' },
    Directory = { fg = accent, gui = 'bold' },
    Title = { fg = accent, gui = 'bold' },
    -- }}}
    -- ui {{{
    Normal = { fg = fg, bg = bg },
    NormalPopover = { fg = fg, bg = bg2},
    Visual = { bg = selection },
    VisualBold = { bg = selection, gui = 'bold' },

    Search = { fg = fg, bg = accent },
    LineNr = { fg = comment, bg = bg0 },
    CursorLine = { bg = bg0 },
    CursorLineNr = { fg = accent1, bg = accent0 },
    Cursor = { bg = 'accent'},
    SignColumn = { fg = fg, bg = bg0 },
    FoldColumn = { fg = accent, bg = bg0 },
    Folded = { fg = comment, bg = bg1, gui = 'italic' },
    Conceal = { fg = fg2 },
    IndentGuide = { fg = comment },
    VertSplit = { fg = comment, bg = bg0 },
    -- }}}
    -- syntax highlighting {{{
    Comment = { fg = comment, gui = 'italic' },
    CommentBold = { fg = comment, gui = 'bold' },
    SpecialComment = { fg = accent1, gui = 'italic'},

    Number = { fg = orange},
    Float = { fg = orange1 },
    Boolean = { fg = orange, gui = 'bold' },
    Character = { fg = orange1, gui = 'italic'},
    String = { fg = orange, gui = 'italic'},
    StringDelimiter = { fg = orange1 },

    Keyword = { fg = cyan },
    Constant = { fg = yellow },
    Type = { fg = green1 },
    TypeBuiltin = { fg = green1, gui = 'bold'},
    Macro = { fg = pink, gui = 'italic' },
    PreProc = { fg = pink },
    Identifier = { fg = pink1 },
    Delimiter = { fg = purple1 },
    Variable = { fg = purple1 },
    VariableBuiltin = { fg = purple1, gui = 'bold' },
    Conditional = { fg = cyan, gui = 'bold' },
    Statement = { fg = purple1, gui = 'bold' },
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

    LspDiagnosticsUnderlineError = { fg = red, gui = 'undercurl' },
    LspDiagnosticsUnderlineWarning = { fg = orange, gui = 'undercurl' },
    LspDiagnosticsUnderlineInformation = { fg = blue, gui = 'undercurl' },
    LspDiagnosticsUnderlineHint = { fg = green, gui = 'undercurl' }
    -- }}}
})
-- }}}

-- links {{{
-- general {{{
high_link('Noise', 'Comment')
high_link('NonText', 'CommentBold')
high_link('Whitespace', 'Comment')
-- }}}
-- ui {{{
high_link('CursorColumn', 'CursorLine')
high_link('TermCursor', 'Cursor')
high_link('IndentGuideEven', 'IndentGuide')
high_link('IndentGuideOdd', 'IndentGuide')
high_link('IncSearch', 'Search')
high_link('SpecialKey', 'Special')
high_link('MatchParen', 'Search')
high_link('Todo', 'LspDiagnosticsVirtualTextWarning')
high_link('DiffAdd', 'LspDiagnosticsVirtualTextHint')
high_link('DiffDelete', 'LspDiagnosticsVirtualTextError')
high_link('DiffChange', 'LspDiagnosticsVirtualTextInformation')
high_link('DiffText', 'LspDiagnosticsVirtualTextInformation')
-- }}}
-- lsp {{{
high_link('LspDiagnosticsDefaultError', 'Error')
high_link('LspDiagnosticsDefaultWarning', 'Warning')
high_link('LspDiagnosticsDefaultInformation', 'Info')
high_link('LspDiagnosticsDefaultHint', 'Success')
-- }}}
-- treesitter {{{
high_link('TSConstructor', 'Structure')
high_link('TSConstBuiltin', 'Constant')
high_link('TSConstMacro', 'Macro')
high_link('TSError', 'Error')
high_link('TSFuncBuiltin', 'Function')
high_link('TSStringRegex', 'StringDelimiter')
high_link('TSStringEscape', 'StringDelimiter')
high_link('TSWarning', 'Warning')
high_link('TSDanger', 'Error')
high_link('TSTypeBuiltin', 'TypeBuiltin')
high_link('TSVariable', 'Variable')
high_link('TSVariableBuiltin', 'VariableBuiltin')
-- }}}
-- }}}
