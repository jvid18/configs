let mapleader=" "

" Testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>t :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :wq<CR>

" Plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>s <Plug>(easymotion-s2)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementations)
nmap <silent> gr <Plug>(coc-references)

" tabs navigation
nnoremap <Leader>h :tabprevious<cr>
nnoremap <Leader>l :tabnext<cr>

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Execute files with node
nnoremap <Leader>n :!node %<CR>

" Execute files with python
nnoremap <Leader>py :!python3 %<CR>

" Execute files with php
" nnoremap <Leader>p :!php %<CR>
