" set runtime path
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'fatih/vim-go'
Bundle 'majutsushi/tagbar'
Bundle 'Blackrush/vim-gocode'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" 设置隐藏level 比如json隐藏双引号与indentLine插件冲突，暂时关闭
" Bundle 'Yggdroot/indentLine'
" let g:indentLine_char = '┊'
"ndle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tomtom/tcomment_vim'
Bundle 'Valloric/YouCompleteMe'
" python completion
" Bundle 'davidhalter/jedi-vim'  
Bundle "pangloss/vim-javascript"
Bundle 'tacahiroy/ctrlp-funky'

" not github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Auto-Pairs'
Bundle 'a.vim'
Bundle 'python-imports.vim'
Bundle 'CaptureClipboard'
Bundle 'ctrlp-modified.vim'
Bundle 'last_edit_marker.vim'
Bundle 'synmark.vim'
Bundle 'SQLComplete.vim'
Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
"Bundle 'JavaScript-Indent'
"Bundle 'Better-Javascript-Indentation'
"Bundle 'jslint.vim'
Bundle 'Vim-Script-Updater'
Bundle 'ctrlp.vim'
Bundle 'jsbeautify'
Bundle 'The-NERD-Commenter'
"django
"Bundle 'django_templates.vim'
"Bundle 'Django-Projects'
"Bundle 'FredKSchott/CoVim'
"Bundle 'djangojump'

"syntastic相关
"execute pathogen#infect()
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0

"python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"pymode配置
let g:pymode_folding = 0

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc']

"ctrlp设置
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']

let g:jedi#documentation_command = 50

set rtp+=$GOROOT/misc/vim

"YouCompleteMe config
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_highlighting = 0
