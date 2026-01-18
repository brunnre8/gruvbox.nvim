vim.o.background = "dark"
vim.cmd.highlight("clear")
vim.g.colors_name = "gruvbox"

local hi = function(name, val)
	-- Force links
	val.force = true
	-- Make sure that `cterm` attribute is not populated from `gui`
	val.cterm = val.cterm or {}
	-- Define global highlight
	vim.api.nvim_set_hl(0, name, val)
end

local bg_hard = "#1d2021"
local bg = "#282828"
local bg_soft = "#32302f"
local bg1 = "#3c3836"
local bg2 = "#504945"
local bg3 = "#665c54"
local bg4 = "#7c6f64"
local gray_245 = "#928374"
local gray_244 = "#928374"
local fg_hard = "#f9f5d7"
local fg = "#fbf1c7"
local fg_soft = "#f2e5bc"
local fg1 = "#ebdbb2"
local fg2 = "#d5c4a1"
local fg3 = "#bdae93"
local fg4 = "#a89984"
local bright_red = "#fb4934"
local bright_green = "#b8bb26"
local bright_yellow = "#fabd2f"
local bright_blue = "#83a598"
local bright_purple = "#d3869b"
local bright_aqua = "#8ec07c"
local bright_orange = "#fe8019"
local neutral_red = "#cc241d"
local neutral_green = "#98971a"
local neutral_yellow = "#d79921"
local neutral_blue = "#458588"
local neutral_purple = "#b16286"
local neutral_aqua = "#689d6a"
local neutral_orange = "#d65d0e"
local dim_red = "#9d0006"
local dim_green = "#79740e"
local dim_yellow = "#b57614"
local dim_blue = "#076678"
local dim_purple = "#8f3f71"
local dim_aqua = "#427b58"
local dim_orange = "#af3a03"

-- General
hi("Normal", { fg = fg, bg = bg })
hi("Conceal", { bg = bg1 })
hi("Cursor", { reverse = true })
-- hi("lCursor", {})
hi("Added", { fg = bright_green })
hi("Changed", { fg = bright_blue })
hi("Removed", { fg = bright_red })
hi("DiffAdd", { fg = bright_green })  -- diff mode: Added line |diff.txt|
hi("DiffChange", {})                  -- diff mode: Changed line |diff.txt|
hi("DiffDelete", { fg = bright_red }) -- diff mode: Deleted line |diff.txt|
hi("DiffText", { fg = bright_blue, bold = true })
hi("ErrorMsg", { fg = bright_red })
hi("WarningMsg", { fg = bright_orange })
hi("Search", { fg = bg, bg = bright_yellow })
hi("IncSearch", { link = "Search" })
hi("CurSearch", { fg = dim_red, bg = bright_yellow, bold = true })
hi("Substitute", { link = "CurSearch" })
hi("ModeMsg", { fg = neutral_yellow })
hi("NonText", { link = "Comment" })
hi("Pmenu", { fg = fg1, bg = bg2 })
hi("PmenuThumb", { bg = bg3 })
-- hi("PmenuSbar", { bg = "Grey", ctermbg = "Grey" })
-- hi("PmenuKind", { link = "Pmenu" })
-- hi("PmenuKindSel", { link = "PmenuSel" })
-- hi("PmenuExtra", { link = "Pmenu" })
-- hi("PmenuExtraSel", { link = "PmenuSel" })
hi("StatusLine", { fg = fg1, bg = bg3 })
hi("StatusLineNC", { fg = fg3, bg = bg1 })
hi("TabLine", { bg = bg1 })
hi("TabLineFill", { link = "TabLine" })
hi("TabLineSel", { fg = bright_yellow, bold = true })
hi("VertSplit", { fg = bg1 })
hi("EndOfBuffer", { fg = dim_blue })
hi("LineNr", { fg = bg3 })
hi("CursorLineNr", { fg = bright_yellow })
hi("CursorLine", { bg = bg1 })
-- hi("LineNrAbove", { link = "LineNr" })
-- hi("LineNrBelow", { link = "LineNr" })
hi("QuickFixLine", { bg = bg1 })
hi("Whitespace", { fg = bg4 })
hi("NormalFloat", { fg = fg, bg = bg1 })
hi("FloatBorder", { fg = fg, bg = bg1 })
hi("FloatTitle", { link = "Title" })
hi("FloatFooter", { link = "Title" })
hi("Comment", { fg = bg4 })
hi("Constant", { fg = bright_aqua })
hi("Special", {})
hi("Identifier", {})
hi("Statement", { fg = bright_orange })
hi("PreProc", { fg = bright_purple })
hi("Type", { fg = bright_blue })
hi("Underlined", { underline = true })
hi("Ignore", { fg = bg1 })
hi("String", { fg = bright_green })
-- from the defaults of vim
hi("Character", { link = "Constant" })
hi("Number", { link = "Constant" })
hi("Boolean", { link = "Constant" })
hi("Float", { link = "Number" })
hi("Function", { fg = bright_yellow })
hi("Conditional", { link = "Statement" })
hi("Repeat", { link = "Statement" })
hi("Label", { link = "Statement" })
hi("Operator", { link = "Statement" })
hi("Keyword", { link = "Statement" })
hi("Exception", { link = "Statement" })
hi("Include", { link = "PreProc" })
hi("Define", { link = "PreProc" })
hi("Macro", { link = "PreProc" })
hi("PreCondit", { link = "PreProc" })
hi("StorageClass", { link = "Type" })
hi("Structure", { link = "Type" })
hi("Typedef", { link = "Type" })
hi("Tag", { link = "Special" })
hi("SpecialChar", { link = "Special" })
hi("Delimiter", { link = "Special" })
hi("SpecialComment", { link = "Special" })
hi("Debug", { link = "Special" })

-- FIXME: test
hi("Error", { fg = bright_yellow, bg = dim_red })
hi("Todo", { fg = fg, bold = true, underline = true })

-- unsure
hi("WinSeparator", { link = "VertSplit" })
-- hi("FloatShadowThrough", { bg = "Black", blend = 100 })
-- hi("FloatShadow", { bg = "Black", blend = 80 })
--- you are here
-- hi("TermCursor", { reverse = true, cterm = { reverse = true } })
-- hi("WinBar", { bold = true, cterm = { bold = true } })
-- hi("WinBarNC", { link = "WinBar" })
-- hi("WildMenu", { fg = "Black", bg = "Yellow", ctermfg = "Black", ctermbg = "Yellow" })
-- hi("CursorLineSign", { link = "SignColumn" })
-- hi("CursorLineFold", { link = "FoldColumn" })
-- hi("MsgSeparator", { link = "StatusLine" })
-- hi("RedrawDebugNormal", { reverse = true, cterm = { reverse = true } })
-- hi("RedrawDebugClear", { bg = "Yellow", ctermbg = "Yellow" })
-- hi("RedrawDebugComposed", { bg = "Green", ctermbg = "Green" })
-- hi("RedrawDebugRecompose", { bg = "Red", ctermbg = "Red" })

hi("DiagnosticError", { fg = bright_red, bold = true })
hi("DiagnosticWarn", { fg = bright_orange })
hi("DiagnosticInfo", { fg = bright_aqua })
hi("DiagnosticHint", { fg = bg4 })
hi("DiagnosticOk", { fg = bright_green })
hi("DiagnosticUnderlineError", { sp = bright_red, underline = true })
hi("DiagnosticUnderlineWarn", { sp = bright_orange, underline = true })
hi("DiagnosticUnderlineInfo", { sp = bright_aqua, underline = true })
hi("DiagnosticUnderlineHint", { sp = fg4, underline = true })
hi("DiagnosticUnderlineOk", { sp = "LightGreen", underline = true })
hi("DiagnosticVirtualTextError", { link = "DiagnosticError" })
hi("DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })
hi("DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })
hi("DiagnosticVirtualTextHint", { link = "DiagnosticHint" })
hi("DiagnosticVirtualTextOk", { link = "DiagnosticOk" })
hi("DiagnosticFloatingError", { link = "DiagnosticError" })
hi("DiagnosticFloatingWarn", { link = "DiagnosticWarn" })
hi("DiagnosticFloatingInfo", { link = "DiagnosticInfo" })
hi("DiagnosticFloatingHint", { link = "DiagnosticHint" })
hi("DiagnosticFloatingOk", { link = "DiagnosticOk" })
hi("DiagnosticSignError", { link = "DiagnosticError" })
hi("DiagnosticSignWarn", { link = "DiagnosticWarn" })
hi("DiagnosticSignInfo", { link = "DiagnosticInfo" })
hi("DiagnosticSignHint", { link = "DiagnosticHint" })
hi("DiagnosticSignOk", { link = "DiagnosticOk" })
hi("DiagnosticDeprecated", { sp = bright_red, strikethrough = true })
hi("DiagnosticUnnecessary", { link = "Comment" })
hi("LspInlayHint", { link = "NonText" })
hi("LspSignatureActiveParameter", { sp = bright_yellow, underline = true })
hi("SnippetTabstop", { link = "Visual" })

-- TODO: whatever
-- BUG: not good
-- DEPRECATED: use something els
-- WARNING: something
-- FIXME: look at me
-- INFO: something
-- Text
hi("@markup.raw", { link = "Identifier" })
hi("@markup.link", { link = "Identifier" })
hi("@markup.heading", { link = "Title" })
hi("@markup.link.url", { link = "Underlined" })
hi("@markup.underline", { link = "Underlined" })
hi("@comment.error", { link = "Error" })                                      -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
hi("@comment.warning", { fg = bright_orange, underline = true, bold = true }) -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
hi("@comment.todo", { link = "Todo" })                                        -- todo-type comments (e.g. `TODO`, `WIP`, `FIXME`)
hi("@comment.note", { link = "Todo" })                                        -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

-- Miscs
hi("@comment", { link = "Comment" })
hi("@punctuation", { link = "Delimiter" })

-- Constants
hi("@constant", { link = "Constant" })
hi("@constant.builtin", { link = "Special" })
hi("@constant.macro", { link = "Define" })
hi("@keyword.directive", { link = "Define" })
hi("@string", { link = "String" })
hi("@string.escape", { link = "SpecialChar" })
hi("@string.special", { link = "SpecialChar" })
hi("@character", { link = "Character" })
hi("@character.special", { link = "SpecialChar" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@number.float", { link = "Float" })

-- Functions
hi("@function", { link = "Function" })
hi("@function.builtin", { link = "Special" })
hi("@function.macro", { link = "Macro" })
hi("@variable.parameter", { link = "Identifier" })
hi("@function.method", { link = "Function" })
hi("@variable.member", { link = "Identifier" })
hi("@property", { link = "Identifier" })
hi("@constructor", { link = "Special" })

-- Keywords
hi("@keyword.conditional", { link = "Conditional" })
hi("@keyword.repeat", { link = "Repeat" })
hi("@label", { link = "Label" })
hi("@operator", { link = "Operator" })
hi("@keyword", { link = "Keyword" })
hi("@keyword.exception", { link = "Exception" })

hi("@variable", { link = "Identifier" })
hi("@type", { link = "Type" })
hi("@type.definition", { link = "Typedef" })
hi("@keyword.storage", { link = "StorageClass" })
hi("@module", { link = "Identifier" })
hi("@keyword.import", { link = "Include" })
hi("@keyword.directive", { link = "PreProc" })
hi("@keyword.debug", { link = "Debug" })
hi("@tag", { link = "Tag" })

-- LSP semantic tokens
hi("@lsp.type.class", { link = "Structure" })
hi("@lsp.type.comment", { link = "Comment" })
-- lua lsp has weird comment overrides preventing TODO etc from working
-- hence kill it with fire
hi("@lsp.type.comment.lua", {})
hi("@lsp.type.decorator", { link = "Function" })
hi("@lsp.type.enum", { link = "Structure" })
hi("@lsp.type.enumMember", { link = "Constant" })
hi("@lsp.type.function", { link = "Function" })
hi("@lsp.type.interface", { link = "Structure" })
hi("@lsp.type.macro", { link = "Macro" })
hi("@lsp.type.method", { link = "Function" })
hi("@lsp.type.namespace", { link = "Structure" })
hi("@lsp.type.parameter", { link = "Identifier" })
hi("@lsp.type.property", { link = "Identifier" })
hi("@lsp.type.struct", { link = "Structure" })
hi("@lsp.type.type", { link = "Type" })
hi("@lsp.type.typeParameter", { link = "TypeDef" })
hi("@lsp.type.variable", { link = "Identifier" })

-- language specific stuff
hi("@lsp.type.property.java", { fg = bright_purple })

-- Default colors only used with a dark background.
hi("ColorColumn", { bg = bg1 })
hi("CursorColumn", { bg = bg2 })
hi("Directory", { fg = neutral_yellow })
hi("FoldColumn", {})
hi("Folded", { fg = fg, bg = bg1 })
hi("MatchParen", { fg = bright_orange })
hi("MoreMsg", { fg = bright_aqua })
hi("Question", { fg = bright_aqua })
hi("SignColumn", {})
hi("SpecialKey", { fg = bright_red, bg = bg_hard })
hi("SpellBad", { sp = bright_red, undercurl = true })
hi("SpellCap", { link = "SpellBad" })
hi("SpellLocal", {})
hi("SpellRare", {})
hi("Title", { fg = bright_yellow, bold = true })
hi("Visual", { fg = bg_hard, bg = bright_yellow })
hi("VisualNOS", { fg = bg_hard, bg = dim_yellow })

hi("fugitiveUntrackedHeading", { fg = bright_aqua, bold = true })
hi("fugitiveStagedHeading", { fg = bright_green, bold = true })
hi("fugitiveUnstagedHeading", { fg = bright_orange, bold = true })
-- gitsigns.nvim
hi("GitSignsAdd", { link = "DiffAdd" })
hi("GitSignsChange", { link = "DiffText" })
hi("GitSignsDelete", { link = "DiffDelete" })
-- nerdtree
hi("NERDTreeDir", { fg = bright_aqua })
hi("NERDTreeDirSlash", { fg = bright_aqua })
hi("NERDTreeFile", {})
hi("NERDTreeExecFile", { fg = bright_green })
-- telescope
hi("TelescopeSelection", { link = "PmenuSel" })
