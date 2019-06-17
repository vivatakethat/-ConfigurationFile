" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" 定义插件，默认用法，和 Vundle 的语法差不多
Plug 'junegunn/vim-easy-align'
Plug 'skywind3000/quickmenu.vim'

" 延迟按需加载，使用到命令的时候再加载或者打开对应文件类型才加载
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" 确定插件仓库中的分支或者 tag
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

set tags=./.tags;,.tags

Plug 'ludovicchabant/vim-gutentags'



" Initialize plugin system
call plug#end()



set nu
set number

"设置中文"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


"显示括号匹配"
set showmatch
"显示空格和tab键"
set listchars=tab:>-,trail:-
set list


"显示状态栏和光标当前位置"
"总是显示状态栏"
set laststatus=2
"显示光标当前位置"
set ruler

"让vimrc配置变更立即生效"
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"打开文件类型检测"
filetype plugin indent on

