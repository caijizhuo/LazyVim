syntax on
set wildmenu "按TAB键时命令行自动补齐"
set number "显示行号"
inoremap jk <Esc>

set visualbell "禁止响铃"
set ruler "显示当前光标位置"
set mouse=a "开启鼠标支持"
map <silent>  <C-A>  gg v G "Ctrl-A 选中所有内容"
filetype on "启动文件类型检查"
set cindent "c/c++自动缩进"
set smartindent
set autoindent "参考上一行的缩进方式进行自动缩进"
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab 

set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"

set pastetoggle=<F11> "F11来支持切换paste和nopaste状态。"
filetype plugin indent on
set t_Co=256

"============"
"3. 多窗口操作"
"============"
map + <C-W>+  "+：扩大窗口"
map - <C-W>-  "- :   缩小窗口"
map <C-l> <C-W>l "C-l 移动到右侧窗口"
map <C-h> <C-W>h "C-h 移动到左侧窗口"
map <C-j> <C-W>j   "C-j 移动到下方窗口"
map <C-k> <C-W>k "C-k 移动到上方窗口"

"============"
"4. tabpages切换"
"============"
map < :tabpre<CR> 
map > :tabnex<CR>

call plug#begin('~/.vim/plugged')
Plug 'git://github.com/vim-airline/vim-airline.git/'
Plug 'git://github.com/vim-airline/vim-airline-themes.git/'
Plug 'git://github.com/morhetz/gruvbox.git/'
Plug 'git://github.com/mhinz/vim-startify.git/'
call plug#end()

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
