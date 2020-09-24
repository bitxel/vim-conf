"""""""""""""""""""
" Basic Setting
"""""""""""""""""""
set nocompatible 
syntax on
set ff=unix
" Tab和缩近
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
" tab转为空格
set expandtab
set wrap
set linebreak
set fo+=mB
" 在visual模式允许使用鼠标，选取包括cursor
set mouse=v
set selection=inclusive
set selectmode=mouse,key
" 搜索忽略大小写
set ignorecase
" 增强的completion
set wildmenu
set mousemodel=popup
set helplang=cn
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" 自动缩进
set autoindent
set cindent
" 显示行号
set number
" 历史记录数
set history=1000
" 搜索逐字符高亮
set hlsearch
" 搜索实时匹配
set incsearch
" 语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
set completeopt=longest,menu
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-,.
" 设置当文件被改动时自动载入
set autoread
" 代码补全 
set completeopt=preview,menu 
" 共享剪贴板  
set clipboard=unnamed 
" 自动保存
set autowrite
" 突出显示当前行
set cursorline
set magic
" 隐藏工具栏菜单栏及两边滚动条
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 禁止生成临时文件
set nobackup
set noswapfile
set linespace=0
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
"高亮光标所在行
set cul
autocmd InsertEnter * set cul
" set cuc
set shortmess=atI   
" 设置背景主题，在主题存在colors文件夹中  
color desert 
" 输入的命令显示出来
set showcmd 
" 状态行
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
" set onmi scheme
hi Pmenu        cterm=none ctermfg=White     ctermbg=DarkGray
hi PmenuSel     cterm=none ctermfg=Black     ctermbg=Gray
hi PmenuSbar    cterm=none ctermfg=none      ctermbg=Gray
hi PmenuThumb   cterm=none ctermfg=DarkGreen ctermbg=Gray

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
autocmd FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
autocmd FileType css setlocal dict+=~/.vim/dict/css.dict
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType scale setlocal dict+=~/.vim/dict/scale.dict
autocmd FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/css.dict
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
autocmd BufRead,BufNewFile *.{go}   set filetype=go
autocmd BufRead,BufNewFile *.{js}   set filetype=javascript
