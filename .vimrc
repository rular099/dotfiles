set nocompatible
set background=dark
colorscheme desert
call plug#begin('~/.vim/plugged')
Plug 'aceofall/gtags.vim'
Plug 'python-mode/python-mode'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
syntax on
set expandtab
set autoindent
set ignorecase
set smartcase
set hlsearch
set shiftwidth=2
set ls=2
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" cscope
set cscopetag                  " 使用 cscope 作为 tags 命令
set cscopeprg='gtags-cscope'   " 使用 gtags-cscope 代替 cscope
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let g:indent_guides_enable_on_vim_startup = 1
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
