set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'taglist.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'derekwyatt/vim-scala'
Plugin 'digitaltoad/vim-jade'
Plugin 'flazz/vim-colorschemes'
call vundle#end()



" This shows what you are typing as a command.  I love this!
set showcmd

" Folding Stuffs
set foldmethod=marker

" Needed for Syntax Highlighting and stuff

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2
set smartindent

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
" set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase
nnoremap ; :
nnoremap : ;


" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4
" }}}


"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]



" Keyboard  *******************************************************************
function Keyboard(type)
      vnoremap l o
      vnoremap o l
      vnoremap L O
      vnoremap O L
      "Search (N)ext -> (J)ump
      vnoremap j n
      vnoremap n j
      vnoremap J N
      vnoremap N J
      "(E)nd of word -> brea(K) of word
      vnoremap k e
      vnoremap e k
      vnoremap K E
      vnoremap E <nop>
      vnoremap h y
      onoremap h y
      "(Y)ank -> (H)aul
      vnoremap y h
      vnoremap H Y
      vnoremap Y H
 
     
      "(O)pen line -> (L)ine
      nnoremap l o
      nnoremap o l
      nnoremap L O
      nnoremap O L
      "Search (N)ext -> (J)ump
      nnoremap j n
      nnoremap n j
      nnoremap J N
      nnoremap N J
      "(E)nd of word -> brea(K) of word
      nnoremap k e
      nnoremap e k
      nnoremap K E
      nnoremap E <nop>
      nnoremap h y
      onoremap h y
      "(Y)ank -> (H)aul
      nnoremap y h
      nnoremap H Y
      nnoremap Y H

      "split mapping
      nnoremap ,a <C-w>s
      nnoremap ,r <C-w>k
      nnoremap ,h <C-w>j
      "tab remapping
      nnoremap ,w     :tabnew<CR>
      nnoremap ,g     :tabnext<CR>
      nnoremap ,t     :tabprevious<CR>
endfunction

function LoadKeyboard()
  call Keyboard("workman")
endfunction

autocmd VimEnter * call LoadKeyboard()


set backupdir=~/.vim/backups
set directory=~/.vim/backups
set clipboard=unnamed


syntax enable
filetype plugin indent on
