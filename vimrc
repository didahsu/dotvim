call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set t_Co=256 "讓vim支援256色
set nocompatible "關閉兼容模式
set number "顯示行號
syntax on "語法高亮
filetype plugin indent on "自動識別檔案類型
colorscheme railscasts "顏色配置模式
set shiftwidth=4
set softtabstop=4
set tabstop =4 "設定tab建的寬度
set autoindent "自動縮排
set background=dark "使用深色主題的高亮度
set cursorline "底線
set wildmenu " command line mode 的參考選項
set wildmode=list:full
set foldmethod=syntax
set foldlevel =10
let g:Powerline_symbols = 'unicode' "Powerline 設定
set laststatus=2 "狀態列設定 0：永不顯示 1：兩個視窗以上顯示 2：永遠顯示
map <F2> <plug>NERDTreeTabsToggle<CR>

