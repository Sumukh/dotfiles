"" Sumukh Sridhara

call pathogen#infect()              " adding pathogen to vimrc
call pathogen#helptags()

set nocompatible                    " choose no compatibility with legacy vi

syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
filetype plugin indent on           " load file type plugins + indentation

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode
set term=screen-256color            " setting colors when vim is inside tmux

" MacVim Settings
:set guifont=Monaco:h12

"Auto Commands
:autocmd BufWrite *.py %retab                 " retab python files on write
:autocmd BufWrite *.html :normal gg=G        " reindent html files on save

"Abbreviations
:iabbrev @@     sumukh1@gmail.com
:iabbrev ccopy  Author Sumukh Sridhara.

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Mappings
"nmap <F8> :TagbarToggle<CR>         " mapping f8 to TagbarToggle
"nmap <F11> :NERDTreeToggle<CR>       " mapping f2 to NERDTreeToggle
"nmap <F3> :NumbersToggle<CR>        " mapping f3 to NumbersToggle

"nmap <F4> :NumbersOnOff<CR>         " mapping f4 to NumbersOnOff
"noremap <F5> :GundoToggle<CR>       " mapping f5 to Gundo
"noremap <F9> :Gcommit<CR>           " mapping f9 to Gcommit
noremap! jj <Esc>                   "<Esc> to jj

"" Mapping 
let mapleader = ","                 " setting leader to , 
nmap <leader>m :make
nmap <leader><F9> :copen
imap ;so System.out.println();<left><left>
set backupdir=~/vimbu
set noswapfile  


"Other Settings
colorscheme tomorrow_night          " Tomorrow Theme

set mouse=a
set laststatus=2                   " Always show the statusline

set relativenumber                           " setting line numbers
set colorcolumn=80                           " line to show 80 character mark
set cursorline                               " shows the horizontal cursor line
nmap <leader>ev :vsplit $MYVIMRC<cr>         " mapping to edit my vimrc quickly
nmap <leader>sv :source $MYVIMRC<cr>         " mapping to source my vimrc quickly

set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>             " clear search with ,/
nnoremap ; :
cmap w!! w !sudo tee % >/dev/null


"Functions
function! OpenChangedFiles()
  let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
  let filenames = split(status, "\n")
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()
