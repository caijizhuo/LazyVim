syntax on
set nobackup "取消备份"
set noswapfile
set wildmenu "按TAB键时命令行自动补齐"
set number "显示行号"
inoremap jk <Esc>
set ruler "显示当前光标位置"
set mouse=a "开启鼠标支持"
filetype on "启动文件类型检查"
set cindent "c/c++自动缩进"
set expandtab
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set listchars+=tab:>-,space:_
set cursorline
set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"
set nowrap
set t_Co=256
set encoding=utf-8
set noerrorbells visualbell t_vb=   "防止闪屏响铃"
autocmd GUIEnter * set visualbell t_vb=

"============"
"  VIM-PLUG  "
"============"
call plug#begin('~/.vim/plugged')
Plug 'git://github.com/vim-airline/vim-airline.git/'
Plug 'git://github.com/vim-airline/vim-airline-themes.git/'
Plug 'git://github.com/morhetz/gruvbox.git/'
Plug 'git://github.com/mhinz/vim-startify.git/'
Plug 'git://github.com/preservim/nerdtree.git'
Plug 'git://github.com/xuyuanp/nerdtree-git-plugin.git'
Plug 'git://github.com/preservim/nerdcommenter.git'
Plug 'git://github.com/w0rp/ale.git'
Plug 'git://github.com/airblade/vim-gitgutter.git'
Plug 'git://github.com/mtdl9/vim-log-highlighting.git' 
call plug#end()

"==============="
"  VIM-AIRLINE  "
"==============="
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '  LN:'
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.branch = '  ⎇ :'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.colnr= ' CN:'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'light'

"==============="
"  COLORSCHEME  "
"==============="
set background=dark
colorscheme gruvbox

"=================="
"  NERD COMMENTER  "
"=================="
let g:NERDSpaceDelims = 1

"============"
"  NERDTREE  "
"============"
map <C-n> :NERDTreeToggle<CR>

"================"
"  NERDTREE GIT  "
"================"
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"============="
"  GITGUTTER  "
"============="
set updatetime=100
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

