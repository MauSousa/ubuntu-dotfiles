set nocompatible
filetype off

" Vim Plugins
call plug#begin()

 Plug 'itchyny/lightline.vim' 
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 Plug 'frazrepo/vim-rainbow'
 Plug 'arzg/vim-colors-xcode'
 Plug 'wadackel/vim-dogrun'
 Plug 'eemed/sitruuna.vim'
 Plug 'mcmartelle/vim-monokai-bold'
 Plug 'gmoe/vim-eslint-syntax'
 Plug 'JarrodCTaylor/vim-sql-suggest'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'JarrodCTaylor/vim-sql-suggest'
 Plug 'shmup/vim-sql-syntax'
 Plug 'ayu-theme/ayu-vim'
 Plug 'StanAngeloff/php.vim'
 Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

" CoC tab key map
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" vim-rainbow 
let g:rainbow_active = 1

" Lightline colorscheme
let g:lightline = {
	\ 'colorscheme': 'onehalflight',
	\}
"\ 'colorscheme': 'onehalflight',
"\ 'colorscheme': 'nord',
"\ 'colorscheme': 'Tomorrow_Night',

" Typo fixes
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" Remap
let mapleader=","
inoremap ,, <ESC>
inoremap ññ <ESC>:wq<enter>
inoremap ñl <ESC>:w<enter>i

" Basic
set number relativenumber
set noswapfile
set autoindent
syntax on
set sw=2
set tabstop=2
set laststatus=2
set wrap linebreak
set showcmd
set wildmenu
"set startofline
set showmatch
set noshowmode
filetype plugin on
" colorscheme monokai-bold
" colorscheme monokai-bold
set term=screen-256color
let ayucolor="light"
colorscheme onehalfdark
" set termguicolors

