local lush = require('lush')
local hsl = lush.hsl

local bg_hard = hsl("#1d2021")
local bg = hsl("#282828")
local bg_soft = hsl("#32302f")
local bg1 = hsl("#3c3836")
local bg2 = hsl("#504945")
local bg3 = hsl("#665c54")
local bg4 = hsl("#7c6f64")
local gray_245 = hsl("#928374")
local gray_244 = hsl("#928374")
local fg_hard = hsl("#f9f5d7")
local fg = hsl("#fbf1c7")
local fg_soft = hsl("#f2e5bc")
local fg1 = hsl("#ebdbb2")
local fg2 = hsl("#d5c4a1")
local fg3 = hsl("#bdae93")
local fg4 = hsl("#a89984")
local bright_red = hsl("#fb4934")
local bright_green = hsl("#b8bb26")
local bright_yellow = hsl("#fabd2f")
local bright_blue = hsl("#83a598")
local bright_purple = hsl("#d3869b")
local bright_aqua = hsl("#8ec07c")
local bright_orange = hsl("#fe8019")
local neutral_red = hsl("#cc241d")
local neutral_green = hsl("#98971a")
local neutral_yellow = hsl("#d79921")
local neutral_blue = hsl("#458588")
local neutral_purple = hsl("#b16286")
local neutral_aqua = hsl("#689d6a")
local neutral_orange = hsl("#d65d0e")
local dim_red = hsl("#9d0006")
local dim_green = hsl("#79740e")
local dim_yellow = hsl("#b57614")
local dim_blue = hsl("#076678")
local dim_purple = hsl("#8f3f71")
local dim_aqua = hsl("#427b58")
local dim_orange = hsl("#af3a03")

local theme = lush(function()
  return {
    -- groups from neovim 0.5.0-nightly-446

    Normal       { fg=fg, bg=bg }, -- normal text
    NormalFloat  { fg=fg_hard, bg=bg2 }, -- Normal text in floating windows.
    Comment      { Normal, fg=bg4 }, -- any comment
    ColorColumn  { Normal, bg=bg1 }, -- used for the columns set with 'colorcolumn'

    Directory    { fg=bright_aqua }, -- directory names (and other special names in listings)
    LineNr       { fg=bg3 }, -- for ":number" and ":#" commands, and when 'number' or 'relativenumber' is set.
    CursorLineNr { fg=neutral_yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set
    Cursor       { gui="reverse,underline,bold" }, -- character under the cursor
    CursorLine   { bg=bg1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Conceal      { Normal, bg=bg1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    DiffAdd      { fg=bright_green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg=bright_blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg=bright_red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg=bright_blue, gui="reverse" }, -- diff mode: Changed text within a changed line |diff.txt|
    VertSplit    { fg=bg1 }, -- the column separating vertically split windows
    SignColumn   { }, -- column where |signs| are displayed
    EndOfBuffer  { fg=dim_blue }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg     { fg=bright_red }, -- error messages on the command line
    Folded       { fg=fg4, bg=bg1 }, -- line used for closed folds
    Search       { fg=bg, bg=bright_yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { fg=bg, bg= bright_yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg=dim_red, bg=bright_yellow }, -- |substitute| replacement text highlighting
    MatchParen   { bg=bg, fg=bright_red }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg=neutral_orange }, -- 'showmode' message (e.g., "-- INSERT -- ")
    NonText      { Comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    StatusLine   { fg=fg1, bg=bg1 }, -- status line of current window
    StatusLineNC { fg=fg4, bg=bg1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    SpellBad     { sp=bright_red, gui="underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { SpellBad }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    Pmenu        { fg=fg1, bg=bg2 }, -- Popup menu: normal item.
    PmenuSel     { fg=bg, bg=dim_yellow }, -- Popup menu: selected item.
    PmenuSbar    { Pmenu }, -- Popup menu: scrollbar.
    PmenuThumb   { Pmenu, gui="reverse" }, -- Popup menu: Thumb of the scrollbar.

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg=bright_aqua }, -- (preferred) any constant
    String         { fg=bright_green }, --   a string constant: "this is a string"
    Character      { fg=bright_purple }, --  a character constant: 'c', '\n'
    Number         { }, --   a number constant: 234, 0xff
    Boolean        { fg=bright_orange }, --  a boolean constant: TRUE, false
    Float          { Number }, --    a floating point constant: 2.3e10

    Identifier     { }, -- (preferred) any variable name
    Function       { fg=bright_yellow}, -- function name (also: methods for classes)

    Statement      { fg=bright_orange }, -- (preferred) any statement
    Conditional    { fg=bright_orange }, --  if, then, else, endif, switch, etc.
    Repeat         { Conditional }, --   for, do, while, etc.
    Label          { Statement }, --    case, default, etc.
    Operator       { }, -- "sizeof", "+", "*", etc.
    Keyword        { Label }, --  any other keyword
    Exception      { Statement }, --  try, catch, throw

    PreProc        { fg=bright_purple }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg=bright_blue }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    Ignore         { fg=bg1 }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error { fg=fg, bg=dim_red }, -- (preferred) any erroneous construct
    Todo { gui="bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    MoreMsg      { fg=bright_aqua }, -- |more-prompt|
    Question     { fg=bright_aqua }, -- |hit-enter| prompt and yes/no questions
    SpecialKey   { fg=bright_red, bg=bg_hard }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    Visual       { fg=bg_hard, bg=bright_yellow }, -- Visual mode selection
    VisualNOS    { fg=bg_hard, bg=dim_yellow }, -- Visual mode selection when vim is "Not Owning the Selection".

    TabLine      { bg=bg1 }, -- tab pages line, not active tab page label
    TabLineFill  { bg=bg1 }, -- tab pages line, where there are no labels
    TabLineSel   { fg=bright_yellow, gui = "bold" }, -- tab pages line, active tab page label
    Title        { fg=bright_yellow, gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    QuickFixLine { bg=bg1 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.


    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- FoldColumn   { }, -- 'foldcolumn'
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- NormalNC     { }, -- normal text in non-current windows
    -- WarningMsg   { }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion


    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError { fg=bright_red, gui="bold" }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning { fg=bright_orange }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation { fg=bright_aqua }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint { fg=bg4 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError {}, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { LspDiagnosticsDefaultError, gui="underline,bold,italic" }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { LspDiagnosticsDefaultWarning, gui="underline" }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { LspDiagnosticsDefaultInformation, gui="underline" }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { NormalFloat }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { NormalFloat }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { NormalFloat }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { NormalFloat }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionals.
    -- TSConstant           { };    -- For constants
    TSConstBuiltin       { Constant };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    TSFuncBuiltin        { Function };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a function.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    TSNamespace          { Identifier };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctuation that does not fall in the categories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    TSStringEscape       { fg=bright_orange };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { Keyword };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

    -- telescope
    TelescopeSelection {fg=bright_yellow, gui="bold"},
    TelescopeMatching {fg=bright_orange, gui="bold"},
    -- TelescopeSlectionCaret {},
    -- TelescopeMultiSelection {},
    -- TelescopeNormal {},
    -- TelescopeBorder {},
    -- TelescopePromptBorder {},
    -- TelescopeResultsBorder {},
    -- TelescopePreviewBorder {},
    -- TelescopePromptPrefix {},
    -- TelescopePrompt {},

    -- nerdtree
    NERDTreeDir {fg=bright_aqua},
    NERDTreeDirSlash {NERDTreeDir},
    NERDTreeFile {},
    NERDTreeExecFile {fg=bright_green},
    -- NERDTreeOpenable {},
    -- NERDTreeClosable {},
    -- NERDTreeUp {},
    -- NERDTreeCWD {},
    -- NERDTreeHelp {},
    -- NERDTreeToggleOn {},
    -- NERDTreeToggleOff {},

    -- gitsigns.nvim
    GitSignsAdd {fg=bright_green},
    GitSignsChange {fg=bright_blue},
    GitSignsDelete {fg=bright_red},
    -- GitSignsCurrentLineBlame {},

    -- fugitive
    diffAdded {DiffAdd},
    diffRemoved {DiffDelete},
    diffChanged {DiffChange},
    fugitiveUntrackedHeading {fg=bright_aqua, gui="bold"},
    fugitiveStagedHeading {fg=bright_green, gui="bold"},
    fugitiveUnstagedHeading {fg=bright_orange, gui="bold"},
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
