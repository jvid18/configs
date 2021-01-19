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
let NERDTreeShowhidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

let g:javascript_plugin_flow = 1

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"et g:UltiSnipsJumpBackwardTrigger="<c-z>"

" kite
let g:kite_supported_languages = ['javascript', 'python']

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
