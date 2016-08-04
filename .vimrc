set nocp
" set runtimepath=/usr/local/Cellar/vim,$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
call pathogen#infect()

" color scheme - vim-solarized-colors
let g:solarized_termtrans=1
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
filetype plugin indent on
let g:EditorConfig_core_mode = 'external_command'
set nowrap
set directory=~/.vim/swp
set backupdir=~/.vim/swp
set incsearch
set hlsearch
set esckeys
set backspace=indent,eol,start
let mapleader = "\<Space>"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set tabstop=2
set relativenumber
set autoread
nnoremap <Leader>w :w<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>k :lnext<CR>
nnoremap <Leader>j :lprevious<CR>

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <Leader>f :FZF<CR>

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

" CtrlP
" nnoremap <c-P> :CtrlPBufTag<cr>
nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules|bower_components)$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

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

" lorem
let g:loremipsum_marker = {}

" edit this file more easily!
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" reload files automatically
:autocmd FileChangedShell * :e

" *.md files are always markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" auto-folding for xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = []
let g:syntastic_scss_checkers = []

" jsbeautify
" map <c-F> :call JsBeautify()<cr>
" autocmd FileType javascript noremap <buffer>  <c-F> :call JsBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-F> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-F> :call CSSBeautify()<cr>

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
let g:flow#enable = 1
let g:flow#autoclose = 1

nnoremap <Leader>- ddp
nnoremap <Leader>_ ddkP
inoremap <Leader><c-u> <esc>viwUi
nnoremap <Leader><c-u> viwU

iabbrev waht what
iabbrev tehn then

vnoremap " <esc>a"<esc>`<i"<esc>`>ll

" Vimscript file settings ---------------------- {{{
" use marker folder for vimscripts
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

