syntax on
set wildmenu "按TAB键时命令行自动补齐"
set number "显示行号"
inoremap jk <Esc>

set visualbell "禁止响铃"
set ruler "显示当前光标位置"
set mouse=a "开启鼠标支持"
filetype on "启动文件类型检查"
set cindent "c/c++自动缩进"
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set cursorline

set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"

set pastetoggle=<F11> "F11来支持切换paste和nopaste状态。"
filetype plugin indent on
set t_Co=256

set noerrorbells visualbell t_vb=   "防止闪屏响铃"
autocmd GUIEnter * set visualbell t_vb=

call plug#begin('~/.vim/plugged')
Plug 'git://github.com/vim-airline/vim-airline.git/'
Plug 'git://github.com/vim-airline/vim-airline-themes.git/'
Plug 'git://github.com/morhetz/gruvbox.git/'
Plug 'git://github.com/mhinz/vim-startify.git/'
Plug 'git://github.com/preservim/nerdtree.git'
Plug 'git://github.com/preservim/nerdcommenter.git'
Plug 'git://github.com/w0rp/ale.git'
Plug 'git://github.com/tomasr/molokai.git'
Plug 'git://github.com/sickill/vim-monokai.git'
Plug 'git://github.com/zerodragon/onehalfdark.git'
call plug#end()

"========================="
"vim-airline无主题后续方案"
"========================="
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=0
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

"======="
"  主题 "
"======="
" colorscheme molokai
" colorscheme gruvbox
" set background=dark
colorscheme onehalfdark

"======="
"  注释 "
"======="
let g:NERDSpaceDelims = 1

"======="
"  目录"
"======="
map <C-n> :NERDTreeToggle<CR>
