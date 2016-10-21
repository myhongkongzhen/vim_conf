
" =============================Vundle Start=======================================
set nocompatible              " 去除VI一致性,必須
filetype off                  " 必須

let iCanHazVundle=1
let bundle_dir = 'C:/Users/Z_Z.W/.vim/bundle/'                                     " 設置包括vundle和初始化相關的runtime path
let vundle_readme=expand(''.bundle_dir.'Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo                                                                                  " Installing Vundle.. "
    echo                                                                                  " "
    silent execute '!mkdir -p '.bundle_dir
    " silent execute '!git clone https://github.com/VundleVim/Vundle.vim.git '.bundle_dir.'Vundle.vim'
    silent execute '!git clone file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/Vundle.vim-master '.bundle_dir.'Vundle.vim'
    let iCanHazVundle=0
endif
exec 'set rtp^='.bundle_dir.'Vundle.vim/'

call vundle#begin()                                                                   " 請將安裝插的命令放在 vundle#begin 和 vundle#end 之間.
" Plugin 'VundleVim/Vundle.vim'  

" -----------------------------

Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/tabular-master' " 設置對其，格式化，用指定字符對其
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-indent-guides-master' " 設置花括號内内容比對
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/nerdtree-5.0.0' " 設置Tree
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/nerdtree-git-plugin-master' " 設置Tree - git
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-multiple-cursors-master' " 列選擇                   

" -----------------------------

call vundle#end()                                                                     " 必須 所有插件需要在下面這行之前

filetype plugin indent on                                                             " 必須 加載vim自帶和插件相應的語法和文件類型相關腳本

" 簡要幫助文檔
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安裝插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地緩存
" :PluginClean      - 清除未使用插件,需要確認; 追加 `!` 自動批准移除未使用插件
"
" 查閱 :h vundle 獲取更多細節和wiki以及FAQ
" ============================Vundle End==========================================

" ============================Encoding Start======================================
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ambiwidth=double           " 防止特殊符号无法正常显示,如五角星等1
" ============================Encoding End======================================

" ============================Common Start=================================
set go=                                                                          " 无菜单、工具栏          
colorscheme torte
" highlight Comment ctermfg=darkcyan
au GUIEnter * simalt ~x " 自動全屏顯示
" winpos 1 1                                                                       " 设置启动位置
" set lines=41 columns=169                                                         " 设置窗口大小，行X列 
set autoindent                                                                   " 设置自动与上一行跟从缩进 
set cursorline                                                                    " 設定游標所在位置的顏色
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#66cc99 guifg=black
set cc=118                                                                        " 标尺的功能
set guifont=MingLiU:h11 " Courier_New 记住空格用下划线代替哦,Courier:h14,
set gfw=Courier_New:h11 " MingLiU
" set helplang=cn
set ruler                                                                         " 在编辑过程中，在右下角显示光标位置的状态行
set showmatch                                                                     " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set number                                                                        " 打开行号

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
let g:Powerline_colorscheme='solarized256' " 设置状态栏主题风格

" 设定文件浏览器目录为当前目录
set bsdir=buffer

" set foldmethod=indent " 基于缩进或语法进行代码折叠
set foldmethod=syntax
set nofoldenable " 启动 vim 时关闭折叠代码
au bufwinleave * silent mkview " 保存文件的折叠状态
au BufRead * silent loadview " 恢复文件的折叠状态
" nnoremap <space> za " 用空格来切换折叠状态,zM，关闭所有折叠；zR，打开所有折叠
" 定义快捷键的前缀，即<Leader>
let mapleader=","
" nmap <leader>s :source $VIM/_vimrc<cr>
" nmap <leader>e :e $VIM/_vimrc<cr>

" 正常模式下 alt+j,k,h,l 调整分割窗口大小 
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

" ============================Common End=================================

" ============================Plugins indent-guides Start=========================
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 1
" ============================Plugins indent-guides End===========================

" ============================Plugins nerdTree Start===========================
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
map <A-1> :NERDTreeToggle<CR>
imap <A-1> <Esc>:NERDTreeToggle<CR>
" nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=58
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowLineNumbers=1 " 显示行号
let NERDTreeAutoCenter=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 当所有文件关闭时关闭项目树窗格
" ============================Plugins nerdTree End===========================

" ============================Plugins vim-multiple-cursors Start======================
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<F3>'
let g:multi_cursor_prev_key='<C-F3>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" ============================Plugins vim-multiple-cursors End=======================











































































