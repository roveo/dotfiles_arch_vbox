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
set nowrap

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'mitsuhiko/vim-python-combined'
Plug 'mbbill/undotree'
"Plug 'ntpeters/vim-better-whitespace'
Plug 'ap/vim-buftabline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhartington/oceanic-next'
Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'
Plug 'carlitux/deoplete-ternjs'
Plug 'freitass/todo.txt-vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
call plug#end()

colorscheme solarized
let g:deoplete#enable_at_startup=1
let g:deoplete#file#enable_buffer_path=1
call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])

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

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif
