
" ================================================================================
if has("gui_running")
set encoding=utf-8
set fileencodings=utf-8,chinese,big5,latin1

if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif

let &termencoding=&encoding

source $VIMRUNTIME/delmenu.vim         " 解决菜单乱码
source $VIMRUNTIME/menu.vim

language messages zh_CN.utf-8          " 解决consle输出乱码
set ambiwidth=double                   " 防止特殊符号无法正常显示,如五角星等1

endif
" ================================================================================

" ================================================================================
" set fileformats=unix,dos
" set encoding=utf-8
" set fenc=cp936
" set fencs=utf-8,chinese,latin1 fenc=utf-8 enc=utf-8
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,gbk,gb2312,gb18030,cp936,euc-jp,euc-kr,latin1
" set termencoding=utf-8

" if v:lang =~? '^(zh)|(ja)|(ko)'
set ambiwidth=double " 让vim能够默认以双字节处理那些特殊字符
" endif
" ================================================================================

" ================================================================================
set go= " 无菜单、工具栏"
colorscheme torte
" highlight Comment ctermfg=darkcyan

winpos 1 1 " 设置启动位置
set lines=41 columns=169 " 设置窗口大小，行X列
set autoindent " 设置自动与上一行跟从缩进

set cursorline " 設定游標所在位置的顏色
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#66cc99 guifg=black

set cc=80 " 标尺的功能
set guifont=Courier_New:h11 " 记住空格用下划线代替哦,Courier:h14,
set gfw=MingLiU:h12
" set helplang=cn
set ruler " 在编辑过程中，在右下角显示光标位置的状态行
set showmatch " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号

set number " 打开行号
syntax on " 打开语法高亮
set tabstop=4 " Tab大小
set shiftwidth=4 " 缩进大小

filetype on " 开启文件识别
set nocompatible " 不要vim模仿vi模式，建议设置，
"set nowrap " 不自动换行
set wrap " 自动换行
set hlsearch " 高亮显示结果
set incsearch " 在输入要搜索的文字时，vim会实时匹配

set nocompatible " 不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题

" ================================================================================


" ================================================================================




