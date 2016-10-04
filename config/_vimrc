

" ================================================================================
" 通用設置
" ================================================================================
" source c:/Users/Z_Z.W/.vim/config/plugins.vim
" source c:/Users/Z_Z.W/.vim/config/settings.vim
" ================================================================================

" ================================================================================

set nocompatible " required 不要vim模仿vi模式，建议设置
filetype off " required

" ================================================================================
let iCanHazVundle=1
let bundle_dir = 'C:/Users/Z_Z.W/.vim/bundle/'
let vundle_readme=expand(''.bundle_dir.'Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent execute '!mkdir -p '.bundle_dir
  silent execute '!git clone https://github.com/gmarik/vundle '.bundle_dir.'Vundle.vim'
  let iCanHazVundle=0
endif
exec 'set rtp^='.bundle_dir.'Vundle.vim/'
" ================================================================================

" set rtp+=C:/Users/Z_Z.W/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " 讓vundle管理插件版本,必須

Plugin 'tmhedberg/SimpylFold' " 折叠
" Plugin 'Valloric/YouCompleteMe' " 自动补全,注意vim +PluginInstall后
								" 还需要去~/.vim/bundle/YouCompleteMe中
								" ./install.sh一下
Plugin 'scrooloose/nerdtree' " 项目树
Plugin 'Xuyuanp/nerdtree-git-plugin' " 这个插件可以显示文件的Git增删状态
Plugin 'kien/ctrlp.vim' " 全局搜索
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " 状态栏
Plugin 'scrooloose/nerdcommenter' " 注释 \cc来注释当前航，\cu来反注释，\c<space>来切换注释
Plugin 'vim-scripts/loremipsum' " Loremipsum UI dev
Plugin 'Raimondi/delimitMate' " 括号/引号匹配
Plugin 'Chiel92/vim-autoformat' " autoformat

Plugin 'hail2u/vim-css3-syntax' " CSS语法高亮
Plugin 'groenewege/vim-less' " LESS支持
Plugin 'pangloss/vim-javascript' " avaScript 语法高亮 let javascript_enable_domhtmlcss = 1
Plugin 'nathanaelkane/vim-indent-guides' " Javascript 有时会有较多的缩进
Plugin 'marijnh/tern_for_vim' " tern的插件来提供强大的JavaScript omnifun
" Plugin 'scrooloose/syntastic' 　　 " 如果你有很好的编程习惯，想必会需要下面这个Linting工具
" 它像YCM一样，通过调用外部Linter来完成代码风格检查。
" 所以你还需要安装一个外部工具
" npm install -g jshint
Plugin 'mattn/emmet-vim' " Jade模板引擎


call vundle#end() " required
filetype plugin indent on " required 加載vim自帶和插件相應的語法和文件類型相關腳本

" 不要忘了运行:PluginInstall
" :PluginList - 列出所有已配置的插件
" :PluginInstall - 安裝插件,追加 ! 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 ! 清除本地緩存
" :PluginClean - 清除未使用插件,需要確認; 追加 ! 自動批准移除未使用插件
" ================================================================================

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
" Plugin 'tmhedberg/SimpylFold' " 折叠
set foldmethod=indent
au BufWinLeave * silent mkview  " 保存文件的折叠状态
au BufRead * silent loadview    " 恢复文件的折叠状态
nnoremap <space> za             " 用空格来切换折叠状态

" 用空格键来开折叠（说明西方“"”后面的内容为注释，不会被VIM所识别）
" set foldenable
" set foldmethod=indent " zc 關閉折疊
" nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')
" ================================================================================

" ================================================================================
" 不怎麼好用 ，要強制編譯才能好用
" Plugin 'scrooloose/nerdtree'                " 项目树
" Plugin 'Xuyuanp/nerdtree-git-plugin'        " 这个插件可以显示文件的Git增删状态

let NERDTreeWinPos='left'
" autocmd VimEnter * NERDTree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN> " F2 打开/关闭
map <C-n> :tabnew<CR>                         "  Ctrl+N 新开一个tab标签 
" autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " 当所有文件关闭时关闭项目树窗格
let NERDTreeIgnore=['\.swp', '\~$', 'node_modules'] " 不显示这些文件
let NERDTreeMinimalUI=0 					  " 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeShowLineNumbers=1   			  " 显示行号
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=0					  " 是否显示隐藏文件
let NERDTreeWinSize=31
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" ================================================================================

" ================================================================================
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " 状态栏
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-
" ================================================================================8

" ================================================================================
" Plugin 'vim-scripts/loremipsum' " UI
inoremap Lorem <Esc><Esc>:Loremipsum 20<CR>
inoremap Ipsum <Esc><Esc>:Loremipsum 70<CR>
" ================================================================================


" ================================================================================
" Plugin 'Chiel92/vim-autoformat' " autoformat
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatters_java = ['harttle']
noremap <F5> :Autoformat<CR>
" ================================================================================

" ================================================================================
" Plugin 'pangloss/vim-javascript' " JavaScript 
let javascript_enable_domhtmlcss = 1
" ================================================================================

" ================================================================================










" ================================================================================




