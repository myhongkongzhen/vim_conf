

" ============================EeyStart======================================
" <C-o> jumplist like <C-A-DOWN>
" <C-i> jumplist like <C-A-UP>
" d(delete)3w(word) 删除三个词

" d(delete)5j(lines) 删除6行（包括当前行）
" c(hange)w(word) 替换一个词
" d(delete)t(till){ 删除直到{字符之前
" d(delete)i(inside)p(paragraph) 删除一个段落
" z(scroll)t(top) 当前光标行滚动到顶部
" z(scroll)b(bottom) 当前光标行滚动到底部
" 6j(down) 光标下移6行
"
" ============================Key End======================================

" 定义快捷键的前缀，即<Leader>
let mapleader=","

" ============================Encoding Start======================================
set langmenu=en_US.UTF-8
language message en_US.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ambiwidth=double           " 防止特殊符号无法正常显示,如五角星等1
" ============================Encoding End======================================

" ============================Scheme color Start======================================
" if version >= 700 && &term != 'cygwin' && !has('gui_running')
set t_Co=256
"     if &t_Co == 256 || &t_Co == 88
"         if has('gui') &&
"                     \ (filereadable(expand("$HOME/.vim/plugin/CSApprox.vim")) ||
"                     \  filereadable(expand("$HOME/vimfiles/plugin/CSApprox.vim")))
"             let s:use_CSApprox = 1
"         elseif filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim")) ||
"                     \    filereadable(expand("$HOME/vimfiles/plugin/guicolorscheme.vim"))
"             let s:use_guicolorscheme = 1
"         endif
"     endif
" endif
" if exists('s:use_CSApprox')
"     let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
"     colorscheme rastafari
" elseif exists('s:use_guicolorscheme')
"     runtime! plugin/guicolorscheme.vim
"     GuiColorScheme rastafari
" else
"     colorscheme rastafari
" endif

set background=dark
if has('gui_running')
    colorscheme torte
else
"   colorscheme torte
endif

" ============================Scheme color End======================================

" ============================Common Start=================================
set go=                                                                          " 无菜单、工具栏          

" highlight Comment ctermfg=darkcyan
au GUIEnter * simalt ~x " 自動全屏顯示
" winpos 1 1                                                                       " 设置启动位置
" set lines=41 columns=169                                                         " 设置窗口大小，行X列 
set autoindent                                                                   " 设置自动与上一行跟从缩进 
set cursorline                                                                    " 設定游標所在位置的顏色
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#66cc99 guifg=black
set cc=98                                                                        " 标尺的功能
set guifont=MingLiU:h11 " Courier_New 记住空格用下划线代替哦,Courier:h14,
set gfw=Courier_New:h11 " MingLiU
" set helplang=cn
set ruler                                                                         " 在编辑过程中，在右下角显示光标位置的状态行
set showmatch                                                                     " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set number                                                                        " 打开行号

set autochdir
" autocmd BufEnter * silent! lcd %:p:h
autocmd BufEnter * silent! cd %:p:h:gs/ /\\ / " windows下，对包含空格的路径会有问题

set novb " 响铃
" set vb t_vb= " 雖然去掉了響鈴， 但會出現反白
set visualbell t_vb=  "关闭visual bell
au GuiEnter * set t_vb= "关闭beep

syntax enable                                                                     " 打开语法高亮
syntax on                                                                         " 打开语法高亮
set expandtab " 将制表符扩展为空格
set tabstop=4                                                                     " Tab大小
set shiftwidth=4                                                                  " 缩进大小
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符

filetype plugin on                                                                " 根据侦测到的不同类型加载对应的插件
set nowrap      					                                              " 不自动换行

set spell " 開啓拼寫檢查
set hlsearch                                                                      " 高亮显示结果
set incsearch                                                                     " 在输入要搜索的文字时，vim会实时匹配
set ignorecase                                                                    " 忽略大小寫搜索
set wildmenu                                                                      " vim自身命令行模式智能補全

set gcr=a:block-blinkon0                                                          " 禁止光标闪烁
set guioptions-=l                                                                 " 禁止显示滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m                                                                 " 禁止显示菜单和工具条
set guioptions-=T
set guioptions+=c "使用字符提示框

set laststatus=2                                                                  " 总是显示状态栏
" let g:Powerline_colorscheme='solarized256' " 设置状态栏主题风格

" 设定文件浏览器目录为当前目录
set bsdir=buffer

set foldmethod=indent " 基于缩进或语法进行代码折叠
" set foldmethod=syntax
set nofoldenable " 启动 vim 时关闭折叠代码
au bufwinleave * silent mkview " 保存文件的折叠状态
au BufRead * silent loadview " 恢复文件的折叠状态
" nnoremap <space> za " 用空格来切换折叠状态,zM，关闭所有折叠；zR，打开所有折叠
" nnoremap <C-S-+> za " 用空格来切换折叠状态,zM，关闭所有折叠；zR，打开所有折叠
" nmap <leader>s :source $VIM/_vimrc<cr>
" nmap <leader>e :e $VIM/_vimrc<cr>

" 正常模式下 alt+j,k,h,l 调整分割窗口大小 
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

" 卷軸與游標同步
set noscrollbind
set nocursorbind

" ============================Common End=================================


" ============================Key Start=================================
map <A-5> :copen 30<CR>
imap <A-5> <Esc>:copen<CR>

" nnoremap j jzz " zz 將光標置於屏幕中央
" nnoremap k kzz
"
nnoremap <esc> :nohl<cr> " 搜索完之後去掉高亮

" imap {<CR> {}<ESC>i
imap (<CR> ()<ESC>i
imap [<CR> []<ESC>i

"假如你的花括号是需要另起一行的可以用这个
imap {<CR> {<CR>}<ESC>O
" ============================Key End=================================







































































