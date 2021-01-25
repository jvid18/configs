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

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') |  NERDTree |  endif

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" kite
let g:kite_supported_languages = ['javascript', 'python']

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

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

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
