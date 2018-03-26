set nocp
" set runtimepath=/usr/local/Cellar/vim,$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
call pathogen#infect()

" color scheme - vim-solarized-colors
let g:airline_theme='solarized'
let g:solarized_termtrans=1
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

hi clear SignColumn

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
let g:EditorConfig_core_mode = 'external_command'
set nowrap
set directory=~/.vim/swp
set backupdir=~/.vim/swp
set incsearch
set hlsearch
" set esckeys
set backspace=indent,eol,start
let mapleader = "\<Space>"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set tabstop=2
set relativenumber
set autoread
set sessionoptions-=options

nnoremap <Leader>w :w<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>k :lnext<CR>
nnoremap <Leader>j :lprevious<CR>
nnoremap cf :e <cfile><CR>

" fzf
set rtp+=~/.fzf
nnoremap <Leader>f :FZF<CR>
" nnoremap <Leader>fb :BTags<CR>
" nnoremap <Leader>ft :Tags<CR>
let g:fzf_tags_command = 'ctags -R'

" run checktime more than randomly
autocmd BufEnter,BufWinEnter,CursorHold,CursorHoldI * :checktime

autocmd VimResized * :wincmd =

" Show trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Strip trailing whitespace on write. This is the 'dangerous' version.
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <leader>i :tabp<cr>
nnoremap <leader>o :tabn<cr>
nnoremap <leader>I :bp<cr>
nnoremap <leader>O :bn<cr>

function! PrettierFormat()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute ':normal gggqG'
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <leader>p :call PrettierFormat()<cr>

" tidy
command! Thtml :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0
command! Txml  :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0 -xml

" airline
set laststatus=2 " this shows the status bar all the time
let g:airline#extensions#tabline#enabled = 1

" lorem
let g:loremipsum_marker = {}

" edit this file more easily!
:nnoremap <leader>ev :e $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

:nnoremap <leader>et :e ~/Dropbox/todo.md<cr>

" reload files automatically
:autocmd FileChangedShell * :e

" *.md files are always markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" *.boot files are always clojure
autocmd BufNewFile,BufReadPost *.boot set filetype=clojure

" .eslintrc files are json
autocmd BufNewFile,BufReadPost *.eslintrc set filetype=json

" auto-folding for xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" ale config
let g:ale_fix_on_save = 1
let g:ale_echo_msg_format = '%linter% says %s'
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
nnoremap <leader>ad :ALEDetail<cr>
" let g:ale_sign_error = '⚠️'
" let g:ale_sign_warning = '⚠️'
let g:ale_linters = {
\	'javascript': ['eslint', 'prettier', 'flow']
\}

" auto format with prettier
autocmd FileType javascript set formatprg=prettier\ --stdin\
" autocmd BufWritePre *.js :normal gggqG

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" flow
let g:flow#enable = 0
let g:flow#autoclose = 0

nnoremap <Leader>- ddp
nnoremap <Leader>_ ddkP
inoremap <Leader><c-u> <esc>viwUi
nnoremap <Leader><c-u> viwU

iabbrev waht what
iabbrev tehn then

vnoremap " <esc>a"<esc>`<i"<esc>`>ll

nnoremap <Leader>d :NERDTreeToggle<CR>

" Vimscript file settings ---------------------- {{{
" use marker folder for vimscripts
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" tslime
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

let g:clj_fmt_autosave = 0

function JSOpenTestFile()
  let testPath = substitute(@%, "\.js$", ".test.js", "")
  execute 'vsplit' testPath
endfunction

nnoremap <Leader>t :call JSOpenTestFile()<CR>

nnoremap <Leader>e V:Eval<CR>

" faster splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto format elm
let g:elm_format_autosave = 1

let g:sexp_enable_insert_mode_mappings = 0
