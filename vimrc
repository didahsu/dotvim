call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set t_Co=256 "讓vim支援256色
set nocompatible "關閉兼容模式
set number "顯示行號
syntax on "語法高亮
filetype plugin indent on "自動識別檔案類型
colorscheme railscasts "顏色配置模式
set showmatch "顯示對應得括號
set expandtab "用空白鍵取代Tab
set hls "反白符合搜尋得字串
set shiftwidth=2
set softtabstop=2
set tabstop =2 "設定tab鍵寬度
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
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Tabular plugin setting. 
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
	let p = '^\s*|\s.*\s|\s*$'
	if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
		let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
		Tabularize/|/l1
		normal! 
		call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

"vim-indent-guide highlight setting

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

map <F3> <leader>ig
