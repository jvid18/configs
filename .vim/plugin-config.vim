" HTML, JSX
let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'
" 
" Lightlane
let g:lightline = {
      \	'active': {
      \	  'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \	  'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \	},
      \	'inactive': {
      \	  'left': [['inactive'], ['relativepath']],
      \	  'right': [['bufnum']]
      \	},
      \	'component': {
      \	  'bufnum': '%n',
      \	  'inactive': 'inactive'
      \	},
      \	'component_function': {
      \	  'gitbranch': 'fugitive#head',
      \	  'kitestatus': 'kite#statusline'
      \	},
      \	'colorscheme': 'gruvbox',
      \	'subseparator': {
      \	  'left': '',
      \	  'right': ''
      \	}
      \}

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='<TAB>'

let g:javascript_plugin_flow = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Kite
let g:kite_supported_languages = []

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

" Highlight symbol under cursor on CursorHold


let $FZF_DEFAULT_OPTS='--layout=reverse'


" NERDCommenter
let g:NERDCreateDefaultMappings=1
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDAltDelims_java=1
let g:NERDCustomDelimiters={ 'c': { 'left': '/**', 'right': '*/' } }
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

" Import cost
augroup import_cost_auto_run
     autocmd!
     autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
     autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
     autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
augroup END

" Commenter
filetype plugin on
