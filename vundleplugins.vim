
" =============================Vundle Start=======================================
set nocompatible              " 去除VI一致性,必須
filetype off                  " 必須

let iCanHazVundle=1
let bundle_dir = 'C:/SWDTOOLS/001-mysoftware/vim/vim-config/bundle/'                                     " 設置包括vundle和初始化相關的runtime path
let vundle_readme=expand(''.bundle_dir.'Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo                                                                                  " Installing Vundle.. "
    echo                                                                                  " "
    silent execute '!mkdir -p '.bundle_dir
    silent execute '!git clone https://github.com/VundleVim/Vundle.vim.git '.bundle_dir.'Vundle.vim'
    let iCanHazVundle=0
endif
exec 'set rtp^='.bundle_dir.'Vundle.vim/'

call vundle#begin()                                                                   " 請將安裝插的命令放在 vundle#begin 和 vundle#end 之間.
"pPlugin 'VundleVim/Vundle.vim'

" -----------------------------

Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/tabular-master' " 設置對其，格式化，用指定字符對其
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-indent-guides-master' " 設置花括號内内容比對
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/nerdtree-5.0.0' " 設置Tree
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/nerdtree-git-plugin-master' " 設置Tree - git
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-multiple-cursors-master' " 列選擇
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/ctrlp.vim-master' " 模糊查詢
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-airline-master' " 狀態欄
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-airline-themes-master'
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-bufexplorer-7.4.9'   "列出一打開的文件然後跳轉
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vjde'              " vjde
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/asyncrun.vim-master' " 異步
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/undotree-rel_5.0' " undo  need vim to be compiled python2.4+
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/gundo.vim-2.6.1' " undo 
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/tagbar-master' " tab exubarant ctags
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/nerdcommenter-2.4.0' " commenter註解
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-autoformat-master' " formatter  need to install astyle
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-markdown-master' "  markdown
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-instant-markdown-windows' "  markdown
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-javacomplete2-master' " java autocomplete 
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-colors-xterm-master' " color 
" Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/vim-colors-solarized-master' " console color 
Plugin 'file:///C:/SWDTOOLS/001-mysoftware/vim/vim-vundle-plugin/delimitMate-master' " 自動括號匹配
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
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=58 " 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowLineNumbers=1 " 显示行号
let NERDTreeAutoCenter=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 当所有文件关闭时关闭项目树窗格
autocmd vimenter * if !argc() | NERDTree | endif  "open a NERDTree automatically when vim starts up if no files were specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" ============================Plugins nerdTree End===========================

" ============================Plugins vim-multiple-cursors Start======================
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" ============================Plugins vim-multiple-cursors End=======================

" ============================Plugins ctrlP Start=======================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:100'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.class  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|vim)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|vim)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" ============================Plugins ctrlP End=======================

" ============================Plugins vim-airline-master Start=======================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_theme='term'
" ============================Plugins vim-airline-master End=======================

" ============================Plugins undo Start=======================
nnoremap <C-r> :UndotreeToggle<CR><C-w>h
" let g:gundo_width = 60
" let g:gundo_preview_height = 40
" let g:gundo_right = 0
" ============================Plugins undo End=======================

" ============================Plugins commenter Start=======================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" ============================Plugins commenter End=======================


" ============================Plugins formaater Start=======================
" noremap <F3> :Autoformat<CR>
" let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
" let g:formatters_cpp = ['harttle']
" let g:formatters_java = ['harttle']
" ============================Plugins formaater End=======================

" ============================Plugins markdown Start=======================
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1

" Vim-instant-markdown -----------------
let g:instant_markdown_autostart = 0
" ============================Plugins markdown End=======================

" ============================Plugins javacomplete2 Start=======================
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" ============================Plugins javacomplete2 End=======================

" ============================Plugins scheme Start=======================
" let g:solarized_termcolors=256
" colorscheme solarized 
" let g:solarized_termtrans=1
" let g:solarized_degrade=1
if has('gui_running')
    colorscheme torte
else
"   colorscheme nwombat
endif
" ============================Plugins scheme End=======================

" ============================Plugins tagbar Start=======================
nmap <F8> :TagbarToggle<CR>
imap <F8> <Esc>:TagbarToggle<CR>
" ============================Plugins tagbar End=======================




































































