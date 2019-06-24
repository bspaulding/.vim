set nocp
" set runtimepath=/usr/local/Cellar/vim,$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
call pathogen#infect()

" color scheme - vim-solarized-colors
" let g:airline_theme='solarized'
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" syntax enable
" set background=dark
" colorscheme solarized

" color scheme - vim-one BROKEN ;(
set termguicolors
syntax enable
colorscheme one
set background=dark
let g:airline_theme='one'

" color scheme - onedark
" if (has("termguicolors"))
" 	set termguicolors
" endif
" let g:airline_theme='onedark'
" syntax on
" colorscheme onedark

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
set clipboard=unnamed
set foldlevelstart=99

nnoremap <Leader>w :w<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>k :lnext<CR>
nnoremap <Leader>j :lprevious<CR>
nnoremap cf :e <cfile><CR>
nnoremap <Leader>c :noh<CR>

" fzf
set rtp+=~/.fzf
nnoremap <Leader>f :FZF<CR>
" nnoremap <Leader>fb :BTags<CR>
" nnoremap <Leader>ft :Tags<CR>
let g:fzf_tags_command = 'ctags -R'

" ack.vim use rg or ag if available
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
command Ag Ack

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

" tidy
command! Thtml :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0
command! Txml  :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0 -xml

" airline
set laststatus=2 " this shows the status bar all the time
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" lorem
let g:loremipsum_marker = {}

" edit this file more easily!
:nnoremap <leader>ev :tabe $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

:nnoremap <leader>et :tabe ~/Dropbox/Shared\ With\ Work/todo.md<cr>

" reload files automatically
:autocmd FileChangedShell * :e

" *.md files are always markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" *.boot files are always clojure
autocmd BufNewFile,BufReadPost *.boot set filetype=clojure

" json dot files are json
autocmd BufNewFile,BufReadPost *.eslintrc set filetype=json
autocmd BufNewFile,BufReadPost *.babelrc set filetype=json
autocmd BufNewFile,BufReadPost *.prettierrc set filetype=json

" .vue files are html
autocmd BufNewFile,BufReadPost *.vue set filetype=html

" -dockerfile files are dockerfile
autocmd BufNewFile,BufReadPost *-dockerfile set filetype=dockerfile
autocmd BufNewFile,BufReadPost Dockerfile.prod set filetype=dockerfile

fun! SetFixOnSave()
	" disable fix on save for some file types, just python for now
	if &ft =~ 'python'
		let g:ale_fix_on_save = 0
	else
		let g:ale_fix_on_save = 1
	endif
endfun
autocmd BufNewFile,BufReadPost * call SetFixOnSave()

" auto-folding for xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" ale config
let g:ale_fix_on_save = 1
let g:ale_echo_msg_format = '%linter% says %s'
let g:ale_javascript_prettier_use_local_config = 1
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
nnoremap <leader>ad :ALEDetail<cr>
nnoremap <leader>p :ALEFix<cr>
" let g:ale_sign_error = 'â ï¸'
" let g:ale_sign_warning = 'â ï¸'
let g:ale_linters = {
\	'javascript': ['eslint', 'prettier', 'flow'],
\	'json': ['eslint', 'prettier'],
\}
let g:ale_fixers = {
\	'javascript': ['eslint', 'prettier'],
\	'typescript': ['prettier'],
\	'json': ['eslint', 'prettier'],
\	'rust': ['rustfmt'],
\	'python': ['yapf'],
\	'sql': ['sqlfmt']
\}

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

" nnoremap <Leader>d :NERDTreeToggle<CR>

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

function JestRunFile()
	silent !clear
	execute "!jest --silent " . bufname("%")
endfunction
nnoremap <Leader>j :call JestRunFile()<CR>

function JestRunUpdateSnaps()
	silent !clear
	execute "!jest --silent -u " . bufname("%")
endfunction
nnoremap <Leader>J :call JestRunUpdateSnaps()<CR>

nnoremap <Leader>e V:Eval<CR>

" faster splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto format elm
let g:elm_format_autosave = 1

" let g:sexp_enable_insert_mode_mappings = 0

nnoremap <Leader>= :wincmd =

" session stuff
" autocmd VimLeave * :mks! .vimsession
" autocmd VimEnter * :so .vimsession

" python/jedi things
let g:jedi#auto_initialization = 1
let g:jedi#use_splits_not_buffers = "right"
