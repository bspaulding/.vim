" In Bed by 7pm - lightline colorscheme
" Ported from Sarah Drasner's VS Code theme (sdras/inbedby7pm)
"
" Installation:
"   Place this file at ~/.vim/autoload/lightline/colorscheme/inbedby7pm.vim
"   Then in your .vimrc:
"     let g:lightline = { 'colorscheme': 'inbedby7pm' }

let s:bg        = ['#1e1e3f', 17]
let s:bg_alt    = ['#2d2b55', 54]
let s:border    = ['#4b4880', 60]
let s:fg        = ['#a599e9', 147]
let s:fg_dim    = ['#7b6fc4', 104]
let s:white     = ['#efe9fc', 189]

let s:purple    = ['#c792ea', 177]
let s:blue      = ['#4d8acf', 68]
let s:pink      = ['#ff9ac1', 211]
let s:teal      = ['#00daef', 45]
let s:green     = ['#3ad900', 40]
let s:red       = ['#ff628c', 204]
let s:orange    = ['#f08d49', 208]

" Each entry is [fg, bg]
let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'inactive': {}, 'command': {}, 'terminal': {}}

" NORMAL - purple accent
let s:p.normal.left     = [[s:bg, s:purple], [s:white, s:bg_alt]]
let s:p.normal.middle   = [[s:fg, s:bg]]
let s:p.normal.right    = [[s:bg, s:purple], [s:fg_dim, s:bg_alt]]
let s:p.normal.error    = [[s:red, s:bg]]
let s:p.normal.warning  = [[s:orange, s:bg]]

" INSERT - blue accent
let s:p.insert.left     = [[s:bg, s:blue], [s:white, s:bg_alt]]
let s:p.insert.middle   = [[s:fg, s:bg]]
let s:p.insert.right    = [[s:bg, s:blue], [s:fg_dim, s:bg_alt]]

" VISUAL - pink accent
let s:p.visual.left     = [[s:bg, s:pink], [s:white, s:bg_alt]]
let s:p.visual.middle   = [[s:fg, s:bg]]
let s:p.visual.right    = [[s:bg, s:pink], [s:fg_dim, s:bg_alt]]

" REPLACE - red accent
let s:p.replace.left    = [[s:bg, s:red], [s:white, s:bg_alt]]
let s:p.replace.middle  = [[s:fg, s:bg]]
let s:p.replace.right   = [[s:bg, s:red], [s:fg_dim, s:bg_alt]]

" COMMAND - teal accent
let s:p.command.left    = [[s:bg, s:teal], [s:white, s:bg_alt]]
let s:p.command.middle  = [[s:fg, s:bg]]
let s:p.command.right   = [[s:bg, s:teal], [s:fg_dim, s:bg_alt]]

" TERMINAL - green accent
let s:p.terminal.left   = [[s:bg, s:green], [s:white, s:bg_alt]]
let s:p.terminal.middle = [[s:fg, s:bg]]
let s:p.terminal.right  = [[s:bg, s:green], [s:fg_dim, s:bg_alt]]

" INACTIVE - dimmed
let s:p.inactive.left   = [[s:border, s:bg], [s:border, s:bg]]
let s:p.inactive.middle = [[s:border, s:bg]]
let s:p.inactive.right  = [[s:border, s:bg], [s:border, s:bg]]

let g:lightline#colorscheme#inbedby7pm#palette = lightline#colorscheme#flatten(s:p)
