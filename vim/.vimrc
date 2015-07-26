" vi:syntax=vim

source ~/.vim/statuslinerc
source ~/.vim/vundlerc

""" Editing
set background=dark
colorscheme ron
" highlight LineNr ctermfg=blue
syntax enable " enable syntax highlighting
set encoding=utf-8 " set default encoding
set expandtab " use spaces instead of tabs
set nocompatible " make sure we aren't in vi mode
set noerrorbells " turn off audio bell
set novisualbell " turn off visual bell
set nowrap " disable soft word wrap
set number " show line numbers
set shiftwidth=4 " 1 tab = 4 spaces
set smarttab " be smart when using tabs
set t_Co=16 " only use 16 colors
set t_vb=
set tabstop=4 " 1 tab = 4 spaces
set tm=500

""" Searching
set ignorecase " ignore case when searching
set incsearch " incremental search

""" History
" use an undo file to persist across reopening
set undofile
" set a directory to store the undo history
set undodir=/home/cjbarrac/.vimundo/
" remember 999 previous commands
set history=999

""" Plugin Shortcuts
map <C-n>     :NERDTreeToggle<CR>
map <C-p>     :CtrlP<CR>
nnoremap <F5> :GundoToggle<CR>
vmap <Enter>  <Plug>(EasyAlign)
nmap ga       <Plug>(EasyAlign)

""" Custom Commands
command W w !sudo tee % > /dev/null

