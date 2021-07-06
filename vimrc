set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'sebdah/vim-delve'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jremmen/vim-ripgrep'
Plugin 'elzr/vim-json'
Plugin 'quramy/tsuquyomi'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

let g:airline_theme='solarized'
"let g:airline_theme='papercolor'
set background=light
"colorscheme PaperColor
colorscheme solarized

"disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap a <Nop>

set encoding=UTF-8
set number
"yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set backspace=start,indent,eol
"go
autocmd FileType  go setlocal ts=2 sts=2 sw=2 expandtab
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:ackprg = 'ag --vimgrep'
"map <C-S-F> :CtrlSF

set autowrite

"Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" coc
" Use <c-space> to trigger completion.
 inoremap <silent><expr> <c-space> coc#refresh()
"highligh search results
set hls

"display filename
set laststatus=2
set statusline=%f

"fuzzy-completion
 set rtp+=/opt/homebrew/opt/fzf

 "vim-json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set expandtab
  autocmd FileType json set tabstop=2
  autocmd FileType json set shiftwidth=2
augroup END
