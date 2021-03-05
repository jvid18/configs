set number relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=UTF-8
set showmatch
set sw=2
source ~/configs/.vim/plugins.vim
source ~/configs/.vim/maps.vim
source ~/configs/.vim/plugin-config.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
