
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




