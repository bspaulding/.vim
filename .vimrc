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
set shiftwidth=2
set hlsearch
set incsearch
set autoread

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType html,js,ruby,eruby,yaml set ai sw=2 sts=2 et
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

" Taglist Configuration
let Tlist_Ctags_Cmd = "ctags"
let Tlist_WinWidth = 50
let Tlist_Inc_Winwidth = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Sort_Type = "name"
let Tlist_Close_On_Select = 1
let Tlist_Compact_Format = 1
let Tlist_Display_Tag_Scope = 0
let Tlist_Show_One_File = 1
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

map <F4> :TlistToggle<cr>
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" vim-ruby-conque
" Cmd-R: Run related spec
let g:ruby_conque_rspec_runner='bundle exec rspec'
nmap <silent> <Leader>r :call RunRspecCurrentFileConque()<CR>

" command-t configuration
let g:CommandTAcceptSelectionMap='<C-t>'
let g:CommandTAcceptSelectionTabMap='<CR>'

" Tab Nav shortcuts
nmap <silent> <Leader>] :tabn<CR>
nmap <silent> <Leader>[ :tabp<CR>

" Tidy shortcut
:command Thtml :%!tidy -q -wrap 800 -i --show-errors 0
:command Txml  :%!tidy -q -wrap 800 -i --show-errors 0 -xml

" Color scheme
let g:zenburn_high_Contrast=1
let g:zenburn_alternate_Visual=1
let g:zenburn_old_Visual = 1
colorscheme zenburn
set guifont=Menlo:h18
