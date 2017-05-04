syntax on
set background=dark
filetype plugin indent on

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=UTF-8
set number
set cursorline

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'Shougo/deoplete.nvim'
Plug 'pangloss/vim-javascript'
Plug 'zchee/deoplete-jedi'
Plug 'mitsuhiko/vim-python-combined'
Plug 'derekwyatt/vim-scala'
Plug 'mbbill/undotree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ap/vim-buftabline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhartington/oceanic-next'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'
Plug 'easymotion/vim-easymotion'
Plug 'carlitux/deoplete-ternjs'
Plug 'freitass/todo.txt-vim'
Plug 'pearofducks/ansible-vim'
call plug#end()

colorscheme solarized
let g:deoplete#enable_at_startup=1
let g:deoplete#file#enable_buffer_path=1

" Moving between buffers
nmap <C-n> :bn<CR>
nmap <C-p> :bN<CR>

" Run FZF fuzzy search
nmap <A-p> :FZF<CR>

" Move lines around
nmap <A-k> ddkP
nmap <A-j> ddjP

" Move between buffers
nmap <A-l> :bn<CR>
nmap <A-h> :bN<CR>

" Run python files
autocmd FileType python nmap <F5> :!python3 %:p<CR>
autocmd FileType python nmap <F6> :!python3 %:p

autocmd CompleteDone * pclose!
