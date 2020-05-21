if has("syntax")
syntax on
endif

:set nu
:set encoding=utf-8
:set tabstop=4
:set cursorline
:set autoindent


call plug#begin()
"NERDTree
Plug 'preservim/nerdtree'


"ale
Plug 'dense-analysis/ale'

"vim-markdown
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()


"NERDTree
map tt :NERDTreeToggle<CR>

"vim-markdown
let g:vim_markdown_math = 1
map dir :Toc<CR>

"markdown preview
let g:mkdp_markdown_css=''
map mm :MarkdownPreview<CR>


