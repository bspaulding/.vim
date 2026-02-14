" Name:         In Bed by 7pm
" Author:       Ported from Sarah Drasner's VS Code theme (sdras/inbedby7pm)
" Description:  A color theme for non-night owls
" Maintainer:   Vim port
" License:      MIT

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "inbedby7pm"

" ─────────────────────────────────────────────────────────────
"  Palette
" ─────────────────────────────────────────────────────────────
"  bg          #1e1e3f   deep indigo background
"  bg_alt      #2d2b55   slightly lighter indigo (sidebar/panels)
"  bg_line     #3a3764   current-line / selection
"  border      #4b4880   borders / separators
"  fg          #a599e9   main foreground (soft lavender)
"  fg_dim      #7b6fc4   dimmer foreground
"  comment     #7a6897   muted purple-grey comments
"  red         #ff628c   errors, deletions
"  orange      #f08d49   constants, numbers
"  yellow      #fad000   warnings, special
"  green       #3ad900   strings
"  teal        #00daef   keywords / tags
"  cyan        #9effff   parameters / properties
"  blue        #4d8acf   functions
"  purple      #c792ea   types / classes
"  pink        #ff9ac1   support / attribute names
"  white       #efe9fc   bright identifiers
"  black_sel   #342b57   visual selection bg
" ─────────────────────────────────────────────────────────────

" ── Editor chrome ────────────────────────────────────────────
hi Normal          guifg=#a599e9   guibg=#1e1e3f   gui=NONE      ctermfg=147  ctermbg=17
hi NormalNC        guifg=#7b6fc4   guibg=#1e1e3f   gui=NONE      ctermfg=104  ctermbg=17

hi LineNr          guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE
hi CursorLineNr    guifg=#fad000   guibg=#2d2b55   gui=bold      ctermfg=220  ctermbg=54
hi CursorLine      guifg=NONE      guibg=#2d2b55   gui=NONE      ctermbg=54
hi CursorColumn    guifg=NONE      guibg=#2d2b55   gui=NONE      ctermbg=54
hi ColorColumn     guifg=NONE      guibg=#2d2b55   gui=NONE      ctermbg=54

hi SignColumn      guifg=#7b6fc4   guibg=NONE      gui=NONE      ctermfg=104  ctermbg=NONE
hi FoldColumn      guifg=#7b6fc4   guibg=NONE      gui=NONE      ctermfg=104  ctermbg=NONE
hi Folded          guifg=#7b6fc4   guibg=#2d2b55   gui=italic    ctermfg=104  ctermbg=54

hi VertSplit       guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE

hi StatusLine      guifg=#efe9fc   guibg=#2d2b55   gui=NONE      ctermfg=189  ctermbg=54
hi StatusLineNC    guifg=#7b6fc4   guibg=#2d2b55   gui=NONE      ctermfg=104  ctermbg=54
hi WildMenu        guifg=#1e1e3f   guibg=#fad000   gui=bold      ctermfg=17   ctermbg=220

hi TabLine         guifg=#7b6fc4   guibg=#2d2b55   gui=NONE      ctermfg=104  ctermbg=54
hi TabLineFill     guifg=NONE      guibg=#2d2b55   gui=NONE      ctermbg=54
hi TabLineSel      guifg=#efe9fc   guibg=#1e1e3f   gui=bold      ctermfg=189  ctermbg=17

hi Pmenu           guifg=#a599e9   guibg=#2d2b55   gui=NONE      ctermfg=147  ctermbg=54
hi PmenuSel        guifg=#1e1e3f   guibg=#c792ea   gui=bold      ctermfg=17   ctermbg=177
hi PmenuSbar       guifg=NONE      guibg=#4b4880   gui=NONE      ctermbg=60
hi PmenuThumb      guifg=NONE      guibg=#7b6fc4   gui=NONE      ctermbg=104

hi Visual          guifg=NONE      guibg=#342b57   gui=NONE      ctermbg=53
hi VisualNOS       guifg=NONE      guibg=#342b57   gui=NONE      ctermbg=53
hi Search          guifg=#1e1e3f   guibg=#fad000   gui=NONE      ctermfg=17   ctermbg=220
hi IncSearch       guifg=#1e1e3f   guibg=#ff628c   gui=bold      ctermfg=17   ctermbg=204
hi Substitute      guifg=#1e1e3f   guibg=#fad000   gui=NONE      ctermfg=17   ctermbg=220

hi MatchParen      guifg=#fad000   guibg=NONE      gui=bold,underline ctermfg=220 cterm=bold,underline

hi EndOfBuffer     guifg=#2d2b55   guibg=NONE      gui=NONE      ctermfg=54   ctermbg=NONE
hi NonText         guifg=#3a3764   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE
hi SpecialKey      guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE
hi Conceal         guifg=#7b6fc4   guibg=NONE      gui=NONE      ctermfg=104  ctermbg=NONE

" ── Messages ─────────────────────────────────────────────────
hi ErrorMsg        guifg=#ff628c   guibg=NONE      gui=bold      ctermfg=204  ctermbg=NONE
hi WarningMsg      guifg=#fad000   guibg=NONE      gui=bold      ctermfg=220  ctermbg=NONE
hi ModeMsg         guifg=#c792ea   guibg=NONE      gui=bold      ctermfg=40   ctermbg=NONE
hi MoreMsg         guifg=#3ad900   guibg=NONE      gui=bold      ctermfg=40   ctermbg=NONE
hi Question        guifg=#00daef   guibg=NONE      gui=bold      ctermfg=45   ctermbg=NONE

hi Error           guifg=#ff628c   guibg=NONE      gui=undercurl guisp=#ff628c ctermfg=204
hi Todo            guifg=#1e1e3f   guibg=#fad000   gui=bold      ctermfg=17   ctermbg=220

hi SpellBad        guifg=NONE      guibg=NONE      gui=undercurl guisp=#ff628c cterm=underline
hi SpellCap        guifg=NONE      guibg=NONE      gui=undercurl guisp=#fad000 cterm=underline
hi SpellRare       guifg=NONE      guibg=NONE      gui=undercurl guisp=#c792ea cterm=underline
hi SpellLocal      guifg=NONE      guibg=NONE      gui=undercurl guisp=#00daef cterm=underline

" ── Diffs ─────────────────────────────────────────────────────
hi DiffAdd         guifg=#3ad900   guibg=#1c3b1c   gui=NONE      ctermfg=40   ctermbg=22
hi DiffChange      guifg=#fad000   guibg=#3b3418   gui=NONE      ctermfg=220  ctermbg=58
hi DiffDelete      guifg=#ff628c   guibg=#3b1c22   gui=NONE      ctermfg=204  ctermbg=52
hi DiffText        guifg=#fad000   guibg=#5c4e00   gui=bold      ctermfg=220  ctermbg=58  cterm=bold

hi Added           guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi Changed         guifg=#fad000   guibg=NONE      gui=NONE      ctermfg=220
hi Removed         guifg=#ff628c   guibg=NONE      gui=NONE      ctermfg=204

" ── Standard syntax groups ────────────────────────────────────
hi Comment         guifg=#7a6897   guibg=NONE      gui=italic    ctermfg=97   cterm=italic

hi Constant        guifg=#f08d49   guibg=NONE      gui=NONE      ctermfg=208
hi String          guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi Character       guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi Number          guifg=#f08d49   guibg=NONE      gui=NONE      ctermfg=208
hi Boolean         guifg=#f08d49   guibg=NONE      gui=italic    ctermfg=208  cterm=italic
hi Float           guifg=#f08d49   guibg=NONE      gui=NONE      ctermfg=208

hi Identifier      guifg=#9effff   guibg=NONE      gui=NONE      ctermfg=123
hi Function        guifg=#4d8acf   guibg=NONE      gui=NONE      ctermfg=68

hi Statement       guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Conditional     guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Repeat          guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Label           guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Operator        guifg=#a599e9   guibg=NONE      gui=NONE      ctermfg=147
hi Keyword         guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Exception       guifg=#ff628c   guibg=NONE      gui=NONE      ctermfg=204

hi PreProc         guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi Include         guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi Define          guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi Macro           guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi PreCondit       guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177

hi Type            guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi StorageClass    guifg=#c792ea   guibg=NONE      gui=italic    ctermfg=177  cterm=italic
hi Structure       guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177
hi Typedef         guifg=#c792ea   guibg=NONE      gui=NONE      ctermfg=177

hi Special         guifg=#ff9ac1   guibg=NONE      gui=NONE      ctermfg=211
hi SpecialChar     guifg=#ff9ac1   guibg=NONE      gui=NONE      ctermfg=211
hi Tag             guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi Delimiter       guifg=#a599e9   guibg=NONE      gui=NONE      ctermfg=147
hi SpecialComment  guifg=#ff9ac1   guibg=NONE      gui=italic    ctermfg=211  cterm=italic
hi Debug           guifg=#ff628c   guibg=NONE      gui=NONE      ctermfg=204

hi Underlined      guifg=#a599e9   guibg=NONE      gui=underline ctermfg=147  cterm=underline
hi Ignore          guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60

hi Bold            gui=bold        cterm=bold
hi Italic          gui=italic      cterm=italic
hi Title           guifg=#efe9fc   guibg=NONE      gui=bold      ctermfg=189  cterm=bold

" ── GitGutter ─────────────────────────────────────────────────
hi GitGutterAdd    guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi GitGutterChange guifg=#fad000   guibg=NONE      gui=NONE      ctermfg=220
hi GitGutterDelete guifg=#ff628c   guibg=NONE      gui=NONE      ctermfg=204

" ── Language: HTML ───────────────────────────────────────────
hi htmlTag          guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi htmlEndTag       guifg=#00daef   guibg=NONE      gui=NONE      ctermfg=45
hi htmlTagName      guifg=#00daef   guibg=NONE      gui=bold      ctermfg=45   cterm=bold
hi htmlArg          guifg=#9effff   guibg=NONE      gui=NONE      ctermfg=123
hi htmlString       guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi htmlTitle        guifg=#efe9fc   guibg=NONE      gui=bold      ctermfg=189  cterm=bold
hi htmlBold         guifg=#efe9fc   guibg=NONE      gui=bold      ctermfg=189  cterm=bold
hi htmlItalic       guifg=#a599e9   guibg=NONE      gui=italic    ctermfg=147  cterm=italic

" ── Language: CSS ────────────────────────────────────────────
hi cssAttrComma         guifg=#a599e9   guibg=NONE  gui=NONE      ctermfg=147
hi cssAttributeSelector guifg=#9effff   guibg=NONE  gui=NONE      ctermfg=123
hi cssBraces            guifg=#a599e9   guibg=NONE  gui=NONE      ctermfg=147
hi cssClassName         guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssClassNameDot      guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssFunctionName      guifg=#4d8acf   guibg=NONE  gui=NONE      ctermfg=68
hi cssIdentifier        guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssImportant         guifg=#ff628c   guibg=NONE  gui=bold      ctermfg=204  cterm=bold
hi cssInclude           guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssMediaType         guifg=#f08d49   guibg=NONE  gui=italic    ctermfg=208  cterm=italic
hi cssProp              guifg=#9effff   guibg=NONE  gui=NONE      ctermfg=123
hi cssPseudoClassId     guifg=#ff9ac1   guibg=NONE  gui=NONE      ctermfg=211
hi cssSelectorOp        guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssSelectorOp2       guifg=#c792ea   guibg=NONE  gui=NONE      ctermfg=177
hi cssTagName           guifg=#00daef   guibg=NONE  gui=NONE      ctermfg=45
hi cssUnitDecorators    guifg=#f08d49   guibg=NONE  gui=NONE      ctermfg=208
hi cssValueLength       guifg=#f08d49   guibg=NONE  gui=NONE      ctermfg=208
hi cssValueNumber       guifg=#f08d49   guibg=NONE  gui=NONE      ctermfg=208
hi cssValueTime         guifg=#f08d49   guibg=NONE  gui=NONE      ctermfg=208
hi cssColor             guifg=#f08d49   guibg=NONE  gui=NONE      ctermfg=208
hi cssDefinition        guifg=#9effff   guibg=NONE  gui=NONE      ctermfg=123
hi cssValueKeyword      guifg=#00daef   guibg=NONE  gui=NONE      ctermfg=45

" ── Language: JavaScript / TypeScript ────────────────────────
hi javaScriptReserved    guifg=#00daef  guibg=NONE  gui=NONE      ctermfg=45
hi javaScriptNull        guifg=#f08d49  guibg=NONE  gui=italic    ctermfg=208  cterm=italic
hi javaScriptValue       guifg=#f08d49  guibg=NONE  gui=NONE      ctermfg=208
hi javaScriptFunction    guifg=#00daef  guibg=NONE  gui=NONE      ctermfg=45
hi javaScriptIdentifier  guifg=#00daef  guibg=NONE  gui=NONE      ctermfg=45
hi javaScriptMember      guifg=#9effff  guibg=NONE  gui=NONE      ctermfg=123
hi javaScriptOperator    guifg=#a599e9  guibg=NONE  gui=NONE      ctermfg=147
hi jsArrowFunction       guifg=#00daef  guibg=NONE  gui=NONE      ctermfg=45
hi jsClassDefinition     guifg=#c792ea  guibg=NONE  gui=NONE      ctermfg=177
hi jsDestructuringBlock  guifg=#9effff  guibg=NONE  gui=NONE      ctermfg=123
hi jsDestructuringObject guifg=#9effff  guibg=NONE  gui=NONE      ctermfg=123
hi jsExport              guifg=#c792ea  guibg=NONE  gui=NONE      ctermfg=177
hi jsFuncCall            guifg=#4d8acf  guibg=NONE  gui=NONE      ctermfg=68
hi jsImport              guifg=#c792ea  guibg=NONE  gui=NONE      ctermfg=177
hi jsModuleKeyword       guifg=#c792ea  guibg=NONE  gui=NONE      ctermfg=177
hi jsNull                guifg=#f08d49  guibg=NONE  gui=italic    ctermfg=208  cterm=italic
hi jsObjectKey           guifg=#9effff  guibg=NONE  gui=NONE      ctermfg=123
hi jsReturn              guifg=#00daef  guibg=NONE  gui=NONE      ctermfg=45
hi jsThis                guifg=#ff628c  guibg=NONE  gui=italic    ctermfg=204  cterm=italic

" ── Language: Markdown ───────────────────────────────────────
hi markdownH1         guifg=#efe9fc   guibg=NONE    gui=bold      ctermfg=189  cterm=bold
hi markdownH2         guifg=#c792ea   guibg=NONE    gui=bold      ctermfg=177  cterm=bold
hi markdownH3         guifg=#9effff   guibg=NONE    gui=bold      ctermfg=123  cterm=bold
hi markdownH4         guifg=#3ad900   guibg=NONE    gui=bold      ctermfg=40   cterm=bold
hi markdownH5         guifg=#fad000   guibg=NONE    gui=bold      ctermfg=220  cterm=bold
hi markdownH6         guifg=#f08d49   guibg=NONE    gui=bold      ctermfg=208  cterm=bold
hi markdownBold       guifg=#efe9fc   guibg=NONE    gui=bold      ctermfg=189  cterm=bold
hi markdownItalic     guifg=#a599e9   guibg=NONE    gui=italic    ctermfg=147  cterm=italic
hi markdownCode       guifg=#3ad900   guibg=#2d2b55 gui=NONE      ctermfg=40   ctermbg=54
hi markdownCodeBlock  guifg=#3ad900   guibg=#2d2b55 gui=NONE      ctermfg=40   ctermbg=54
hi markdownLink       guifg=#4d8acf   guibg=NONE    gui=underline ctermfg=68   cterm=underline
hi markdownLinkText   guifg=#9effff   guibg=NONE    gui=NONE      ctermfg=123
hi markdownUrl        guifg=#4d8acf   guibg=NONE    gui=underline ctermfg=68   cterm=underline
hi markdownBlockquote guifg=#7a6897   guibg=NONE    gui=italic    ctermfg=97   cterm=italic
hi markdownRule       guifg=#4b4880   guibg=NONE    gui=NONE      ctermfg=60

" ── Language: Python ─────────────────────────────────────────
hi pythonBuiltin      guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi pythonClass        guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi pythonDecorator    guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi pythonFunction     guifg=#4d8acf   guibg=NONE    gui=NONE      ctermfg=68
hi pythonImport       guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi pythonOperator     guifg=#a599e9   guibg=NONE    gui=NONE      ctermfg=147
hi pythonSelf         guifg=#ff628c   guibg=NONE    gui=italic    ctermfg=204  cterm=italic
hi pythonStatement    guifg=#00daef   guibg=NONE    gui=NONE      ctermfg=45

" ── Language: Vim script ──────────────────────────────────────
hi vimCommentTitle    guifg=#ff9ac1   guibg=NONE    gui=italic    ctermfg=211  cterm=italic
hi vimFunction        guifg=#4d8acf   guibg=NONE    gui=NONE      ctermfg=68
hi vimIsCommand       guifg=#00daef   guibg=NONE    gui=NONE      ctermfg=45
hi vimLet             guifg=#00daef   guibg=NONE    gui=NONE      ctermfg=45
hi vimMap             guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi vimNotation        guifg=#9effff   guibg=NONE    gui=NONE      ctermfg=123
hi vimOption          guifg=#9effff   guibg=NONE    gui=NONE      ctermfg=123

" ── Language: Rust ───────────────────────────────────────────
hi rustAttribute      guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi rustDerive         guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi rustEnum           guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi rustLifetime       guifg=#ff628c   guibg=NONE    gui=italic    ctermfg=204  cterm=italic
hi rustMacro          guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi rustModPath        guifg=#9effff   guibg=NONE    gui=NONE      ctermfg=123
hi rustSelf           guifg=#ff628c   guibg=NONE    gui=italic    ctermfg=204  cterm=italic
hi rustTrait          guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177

" ── Language: Go ─────────────────────────────────────────────
hi goBuiltins         guifg=#ff9ac1   guibg=NONE    gui=NONE      ctermfg=211
hi goDeclaration      guifg=#00daef   guibg=NONE    gui=NONE      ctermfg=45
hi goFunctionCall     guifg=#4d8acf   guibg=NONE    gui=NONE      ctermfg=68
hi goPackage          guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi goStruct           guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177
hi goType             guifg=#c792ea   guibg=NONE    gui=NONE      ctermfg=177

" ── Vim 8 terminal colours ────────────────────────────────────
if exists("*term_setansicolors")
  let g:terminal_ansi_colors = [
    \ "#1e1e3f", "#ff628c", "#3ad900", "#fad000",
    \ "#4d8acf", "#c792ea", "#00daef", "#a599e9",
    \ "#4b4880", "#ff628c", "#3ad900", "#fad000",
    \ "#9effff", "#ff9ac1", "#00daef", "#efe9fc"
  \ ]
endif

" ── Neovim-only: everything below is silently skipped in Vim ──
if !has('nvim')
  finish
endif

hi NormalFloat     guifg=#a599e9   guibg=#2d2b55   gui=NONE      ctermfg=147  ctermbg=54
hi WinSeparator    guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60
hi CurSearch       guifg=#1e1e3f   guibg=#ff628c   gui=bold      ctermfg=17   ctermbg=204
hi Whitespace      guifg=#3a3764   guibg=NONE      gui=NONE      ctermfg=60

hi FloatBorder     guifg=#4b4880   guibg=#2d2b55   gui=NONE      ctermfg=60   ctermbg=54
hi FloatTitle      guifg=#efe9fc   guibg=#2d2b55   gui=bold      ctermfg=189  ctermbg=54

" Diagnostics
hi DiagnosticError              guifg=#ff628c guibg=NONE gui=NONE      ctermfg=204
hi DiagnosticWarn               guifg=#fad000 guibg=NONE gui=NONE      ctermfg=220
hi DiagnosticInfo               guifg=#00daef guibg=NONE gui=NONE      ctermfg=45
hi DiagnosticHint               guifg=#9effff guibg=NONE gui=NONE      ctermfg=123
hi DiagnosticUnderlineError     guifg=NONE    guibg=NONE gui=undercurl guisp=#ff628c cterm=underline
hi DiagnosticUnderlineWarn      guifg=NONE    guibg=NONE gui=undercurl guisp=#fad000 cterm=underline
hi DiagnosticUnderlineInfo      guifg=NONE    guibg=NONE gui=undercurl guisp=#00daef cterm=underline
hi DiagnosticUnderlineHint      guifg=NONE    guibg=NONE gui=undercurl guisp=#9effff cterm=underline
hi DiagnosticVirtualTextError   guifg=#ff628c guibg=NONE gui=italic    ctermfg=204
hi DiagnosticVirtualTextWarn    guifg=#fad000 guibg=NONE gui=italic    ctermfg=220
hi DiagnosticVirtualTextInfo    guifg=#00daef guibg=NONE gui=italic    ctermfg=45
hi DiagnosticVirtualTextHint    guifg=#9effff guibg=NONE gui=italic    ctermfg=123
hi DiagnosticSignError          guifg=#ff628c guibg=NONE gui=NONE      ctermfg=204
hi DiagnosticSignWarn           guifg=#fad000 guibg=NONE gui=NONE      ctermfg=220
hi DiagnosticSignInfo           guifg=#00daef guibg=NONE gui=NONE      ctermfg=45
hi DiagnosticSignHint           guifg=#9effff guibg=NONE gui=NONE      ctermfg=123

" GitSigns
hi GitSignsAdd     guifg=#3ad900   guibg=NONE      gui=NONE      ctermfg=40
hi GitSignsChange  guifg=#fad000   guibg=NONE      gui=NONE      ctermfg=220
hi GitSignsDelete  guifg=#ff628c   guibg=NONE      gui=NONE      ctermfg=204

" IndentBlankline
hi IblIndent       guifg=#2d2b55   guibg=NONE      gui=NONE      ctermfg=54
hi IblScope        guifg=#4b4880   guibg=NONE      gui=NONE      ctermfg=60

" Telescope
hi TelescopeNormal        guifg=#a599e9 guibg=#2d2b55 gui=NONE ctermfg=147 ctermbg=54
hi TelescopeBorder        guifg=#4b4880 guibg=#2d2b55 gui=NONE ctermfg=60  ctermbg=54
hi TelescopeTitle         guifg=#efe9fc guibg=#2d2b55 gui=bold ctermfg=189 ctermbg=54
hi TelescopeSelection     guifg=#efe9fc guibg=#342b57 gui=NONE ctermfg=189 ctermbg=53
hi TelescopeMatching      guifg=#fad000 guibg=NONE    gui=bold ctermfg=220
hi TelescopePromptCounter guifg=#7b6fc4 guibg=NONE    gui=NONE ctermfg=104

" nvim-cmp
hi CmpItemAbbrMatch        guifg=#fad000 guibg=NONE gui=bold ctermfg=220 cterm=bold
hi CmpItemAbbrMatchFuzzy   guifg=#fad000 guibg=NONE gui=bold ctermfg=220 cterm=bold
hi CmpItemKindFunction     guifg=#4d8acf guibg=NONE gui=NONE ctermfg=68
hi CmpItemKindMethod       guifg=#4d8acf guibg=NONE gui=NONE ctermfg=68
hi CmpItemKindVariable     guifg=#9effff guibg=NONE gui=NONE ctermfg=123
hi CmpItemKindKeyword      guifg=#00daef guibg=NONE gui=NONE ctermfg=45
hi CmpItemKindProperty     guifg=#9effff guibg=NONE gui=NONE ctermfg=123
hi CmpItemKindText         guifg=#a599e9 guibg=NONE gui=NONE ctermfg=147
hi CmpItemKindClass        guifg=#c792ea guibg=NONE gui=NONE ctermfg=177
hi CmpItemKindSnippet      guifg=#ff9ac1 guibg=NONE gui=NONE ctermfg=211
hi CmpItemKindValue        guifg=#f08d49 guibg=NONE gui=NONE ctermfg=208
hi CmpItemKindConstant     guifg=#f08d49 guibg=NONE gui=NONE ctermfg=208
hi CmpItemKindEnum         guifg=#c792ea guibg=NONE gui=NONE ctermfg=177
hi CmpItemKindEnumMember   guifg=#f08d49 guibg=NONE gui=NONE ctermfg=208

" Which-key
hi WhichKey          guifg=#00daef guibg=NONE    gui=NONE ctermfg=45
hi WhichKeyGroup     guifg=#c792ea guibg=NONE    gui=NONE ctermfg=177
hi WhichKeyDesc      guifg=#a599e9 guibg=NONE    gui=NONE ctermfg=147
hi WhichKeySeparator guifg=#4b4880 guibg=NONE    gui=NONE ctermfg=60
hi WhichKeyFloat     guifg=#a599e9 guibg=#2d2b55 gui=NONE ctermfg=147 ctermbg=54

" Terminal colours
let g:terminal_color_0  = "#1e1e3f"
let g:terminal_color_1  = "#ff628c"
let g:terminal_color_2  = "#3ad900"
let g:terminal_color_3  = "#fad000"
let g:terminal_color_4  = "#4d8acf"
let g:terminal_color_5  = "#c792ea"
let g:terminal_color_6  = "#00daef"
let g:terminal_color_7  = "#a599e9"
let g:terminal_color_8  = "#4b4880"
let g:terminal_color_9  = "#ff628c"
let g:terminal_color_10 = "#3ad900"
let g:terminal_color_11 = "#fad000"
let g:terminal_color_12 = "#9effff"
let g:terminal_color_13 = "#ff9ac1"
let g:terminal_color_14 = "#00daef"
let g:terminal_color_15 = "#efe9fc"
let g:terminal_color_background = "#1e1e3f"
let g:terminal_color_foreground = "#a599e9"

" Treesitter highlights
hi! link @variable                Identifier
hi! link @variable.builtin        Special
hi! link @variable.parameter      Identifier
hi! link @variable.member         Identifier
hi! link @constant                Constant
hi! link @constant.builtin        Constant
hi! link @constant.macro          Macro
hi! link @module                  Type
hi! link @label                   Label
hi! link @string                  String
hi! link @string.regexp           SpecialChar
hi! link @string.escape           SpecialChar
hi! link @string.special          SpecialChar
hi! link @string.special.url      Underlined
hi! link @character               Character
hi! link @character.special       SpecialChar
hi! link @boolean                 Boolean
hi! link @number                  Number
hi! link @number.float            Float
hi! link @type                    Type
hi! link @type.builtin            Type
hi! link @type.definition         Typedef
hi! link @type.qualifier          StorageClass
hi! link @attribute               Special
hi! link @property                Identifier
hi! link @function                Function
hi! link @function.builtin        Special
hi! link @function.call           Function
hi! link @function.macro          Macro
hi! link @function.method         Function
hi! link @function.method.call    Function
hi! link @constructor             Function
hi! link @operator                Operator
hi! link @keyword                 Keyword
hi! link @keyword.function        Keyword
hi! link @keyword.operator        Operator
hi! link @keyword.import          Include
hi! link @keyword.repeat          Repeat
hi! link @keyword.return          Keyword
hi! link @keyword.exception       Exception
hi! link @keyword.conditional     Conditional
hi! link @keyword.directive       PreProc
hi! link @keyword.directive.define Define
hi! link @punctuation.delimiter   Delimiter
hi! link @punctuation.bracket     Delimiter
hi! link @punctuation.special     Special
hi! link @comment                 Comment
hi! link @comment.documentation   SpecialComment
hi! link @comment.todo            Todo
hi! link @markup.strong           Bold
hi! link @markup.italic           Italic
hi! link @markup.underline        Underlined
hi! link @markup.heading          Title
hi! link @markup.quote            Comment
hi! link @markup.link             Underlined
hi! link @markup.raw              String
hi! link @diff.plus               DiffAdd
hi! link @diff.minus              DiffDelete
hi! link @diff.delta              DiffChange
hi! link @tag                     Tag
hi! link @tag.attribute           Identifier
hi! link @tag.delimiter           Delimiter

" LSP semantic tokens
hi! link @lsp.type.class          Type
hi! link @lsp.type.enum           Type
hi! link @lsp.type.enumMember     Constant
hi! link @lsp.type.function       Function
hi! link @lsp.type.interface      Type
hi! link @lsp.type.keyword        Keyword
hi! link @lsp.type.macro          Macro
hi! link @lsp.type.method         Function
hi! link @lsp.type.namespace      Type
hi! link @lsp.type.parameter      Identifier
hi! link @lsp.type.property       Identifier
hi! link @lsp.type.string         String
hi! link @lsp.type.struct         Structure
hi! link @lsp.type.type           Type
hi! link @lsp.type.variable       Identifier
hi! link @lsp.mod.readonly        Constant
hi! link @lsp.mod.static          StorageClass
