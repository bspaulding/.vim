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

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

call pathogen#infect()

let g:zenburn_high_Contrast=1
let g:zenburn_alternate_Visual=1
colorscheme zenburn
