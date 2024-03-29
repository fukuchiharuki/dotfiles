" Regular Settings
let mapleader = "\<Space>"
:set noswapfile
:set nobackup
:set undodir=~/.vim/undo
:set number
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set noexpandtab
filetype plugin on
filetype indent on

" Switch Buffer
:map <silent> <C-N> :bn<CR>
:map <silent> <C-P> :bp<CR>

" Decimal Increment
:set nrformats=

" Encoding
:set encoding=utf-8

" Disable beep
:set visualbell t_vb=

" Save as..
function! s:newfile(title)
  execute ":f ~/vim-note/".strftime('%Y%m%dT%H%M%S').a:title.".md"
endfunction
nnoremap <Leader>n :<C-u>call <SID>newfile("_")<Left><Left>
