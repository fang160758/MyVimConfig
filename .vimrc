"Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'matsuuu/pinkmare'
Plug 'sainnhe/edge'
Plug 'skywind3000/vim-dict'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdcommenter'
Plug 'terroo/vim-simple-emoji'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kien/rainbow_parentheses.vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

set termguicolors
colorscheme molokai 

"不兼容vi
set nocompatible

set mouse=a

"启用文件类型检测
filetype on
"为检测到的文件类型启用插件
filetype plugin on 

"为检测到的文件类型加载缩进文件
filetype indent on

"打开高亮
syntax on

"打开行号
set number

"突出显示光标所在行列
set cursorline
set cursorcolumn

"设置默认缩进4格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"不保存备份文件
set nobackup
"不创建临时交换文件
set noswapfile

set scrolloff=10

"不自动换行
set nowrap

set encoding=utf-8 " Important to YCM

"搜索
set incsearch

"搜索时忽略大小写
set ignorecase

"大写搜索特指
set smartcase

"显示输入的命令
set showcmd

"显示模式
set showmode

"显示搜索结果
set showmatch

"高亮搜索结果
set hlsearch

"设置命令行保留的行数
set history=1000

"按tab显示菜单
set wildmenu

"bash风格
set wildmode=list:longest

"忽略某些文件类型
set wildignore=*.docx,*.jpg,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set foldmethod=indent



" NERDTree --------
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}




" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
"
" autopop -------------------------------------------
" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'text':1, 'markdown':1, 'makefile':1} 

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c
" }}}

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"dense-analysis/ale
let g:ale_sign_column_always = 1                    "符号槽始终开启
let g:ale_set_highlights = 1                        "禁用高亮显示。
let g:ale_sign_error = '✘'                          "错误提示符。
let g:ale_sign_warning = '!'                        "警告提示符。
let g:ale_echo_msg_error_str = 'E'                  "错误提示符。
let g:ale_echo_msg_warning_str = 'W'                "警告提示符。
let g:airline#extensions#ale#enable = 1             "将ale信息在airline中显示。

"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查。
let g:ale_linters = {
\   'c': ['clangd'],
\   'c++': ['clangd']
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"preservim/nerdcommenter
"按键映射前缀: <leader>c。"
let g:NERDCreateDefaultMappings = 0               "不使用默认的按键映射。
let g:NERDSpaceDelims = 0                         "注释后不添加空格。
let g:NERDCompactSexyComs = 1                     "支持多行注释。
let g:NERDDefaultAlign = 'left'                   "左对齐，而不是跟随代码缩进。
"自定义注释格式
let g:NERDCustomDelimiters = {'c': {'left':'//', 'right':'', 'leftAlt':'/*', 'rightAlt':'*/'},
                              \'cpp': {'left':'//', 'right':'', 'leftAlt':'/*', 'rightAlt':'*/'},
                              \'python': {'left':'#', 'right':'', 'leftAlt':'"""', 'rightAlt':'"""'},
                              \'vim': {'left':'"', 'right':'', 'leftAlt':'"', 'rightAlt':''}}
let g:NERDCommentEmptyLines = 1                   "允许注释插入空行(在注释区域时很有用)。
let g:NERDTrimTrailingWhitespace = 1              "在取消注释时启用对尾随空格的修整。
let g:NERDToggleCheckAllLines = 1                 "启用NERDCommenterToggle来检查是否注释了所有选定的行。
" ------------------------------------------------------------------------

" rainbow_parenthsis----------------------------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" ---------------------------------------------------------------------------

" gutebtags --------------------------------------------------------------
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.fang']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" ------------------------------------------------------------





" keyboard-map ---------------------
" <2-LeftMouse>     Open fold, or select word or % match.
nnoremap <expr> <2-LeftMouse> foldclosed(line('.')) == -1 ? "\<2-LeftMouse>" : 'zo'

inoremap <C-q> <esc>:q!<CR>

inoremap <C-s> <esc>:w!<CR>

inoremap <C-x> <esc>ddi

inoremap <C-z> <esc>ui

inoremap <C-a> <esc>ggyG<esc>

inoremap <C-l> <esc>o

inoremap <C-]> <esc><C-]>

noremap <C-q> :q!<CR>

noremap <C-s> :w!<CR>

noremap <C-x> ddi

noremap <C-z> ui

noremap <C-a> ggyG<esc>

noremap <C-l> o

"\c<space>当前或选中行中含有未注释的行，则都添加注释，都已注释则取消注释。
noremap <silent> <C-\> <plug>NERDCommenterToggle

noremap <C-g> g]
" 只能是 #include 或已打开的文件
noremap <C-d> :YcmCompleter GoToDefinition<CR>
" }}}


set makeprg=make\ EXTRA_CFLAGS=-fcolor-diagnostic
nmap <F5> :make -C ../build/<CR>
