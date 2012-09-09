call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
syntax on
xmap <Leader>s <Plug>surround
filetype plugin indent on
set number
