execute pathogen#infect()
syntax on
filetype plugin indent on
let g:EditorConfig_core_mode = 'external_command'
set nowrap
set directory=~/.vim/swp
set backupdir=~/.vim/swp

" Show trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Strip trailing whitespace on write. This is the 'dangerous' version.
autocmd BufWritePre * :%s/\s\+$//e

" CtrlP
" nnoremap <c-P> :CtrlPBufTag<cr>
let g:ctrlp_working_path_mode = 0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

nnoremap <leader>i :tabp<cr>
nnoremap <leader>o :tabn<cr>

" cucumbertables.vim: https://gist.github.com/tpope/287147
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" tidy
command! Thtml :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0
command! Txml  :%!tidy -q -i --indent 1 --show-body-only 1 --show-errors 0 -xml

" airline
set laststatus=2 " this shows the status bar all the time
let g:airline#extensions#tabline#enabled = 1

" lorem
let g:loremipsum_marker = {}
