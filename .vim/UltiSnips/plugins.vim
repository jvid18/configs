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
Plug 'terryma/vim-multiple-cursors'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Autocomplete
" Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', { 'branch': 'relase' }

" Git
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" I don't know
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'yggdroot/indentline'

Plug 'preservim/nerdcommenter'

call plug#end()
