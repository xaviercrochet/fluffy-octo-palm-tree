set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'sebdah/vim-delve'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

syntax enable
filetype plugin indent on
set hidden
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete

set encoding=UTF-8
set number

let g:airline_theme='solarized'
set background=light
colorscheme solarized

autocmd FileType  go setlocal ts=2 sts=2 sw=2 expandtab
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:ackprg = 'ag --vimgrep'

"fuzzy-completion
set rtp+=/opt/homebrew/opt/fzf

set laststatus=2
set statusline=%f
set hls
set autowrite

"Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

nnoremap <PageUp> <Nop>
nnoremap <PageDown> <Nop>
nnoremap <Home> <Nop>
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>r :Rg<cr>
