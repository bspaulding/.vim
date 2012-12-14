set nocompatible          " We're running Vim, not Vi!
syntax enable             " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

set directory=~/.vim/swp
set backupdir=~/.vim/swp
set wildmode=longest,list
set number
set nowrap
set expandtab
set tabstop=2
set hlsearch

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" Show trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Strip trailing whitespace on write. Yes this is the 'dangerous' version.
autocmd BufWritePre * :%s/\s\+$//e

call pathogen#infect()

let g:zenburn_high_Contrast=1
let g:zenburn_alternate_Visual=1
let g:zenburn_old_Visual = 1
colorscheme zenburn
set guifont=Menlo:h18
