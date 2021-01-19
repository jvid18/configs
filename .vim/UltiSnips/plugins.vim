call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree
Plug 'scrooloose/nerdtree'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
" Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', { 'branch': 'relase' }

call plug#end()
