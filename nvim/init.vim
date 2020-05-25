if has("syntax")
syntax on
endif

:set nu
:set encoding=utf-8
:set tabstop=4
:set cursorline
:set autoindent
imap <C-u> <Esc>

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

"auto paits
Plug 'jiangmiao/auto-pairs'

"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"NERDTree
map tt :NERDTreeToggle<CR>

"vim-markdown
let g:vim_markdown_math = 1
map dir :Toc<CR>

"markdown preview
let g:mkdp_markdown_css=''
map mm :MarkdownPreview<CR>

"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)


"coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

