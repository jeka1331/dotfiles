



call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'pseewald/vim-anyfold'
Plug 'pixelneo/vim-python-docstring'
Plug 'tidalcycles/vim-tidal'

call plug#end()


inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <silent> <C-b> : NERDTreeToggle<CR>
nnoremap <silent> <C-\> : Neoformat<CR>


let g:deoplete#enable_at_startup = 1

let g:neoformat_enabled_python = ['black']
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


let g:neomake_python_enabled_makers = ['pylint']

let g:pymode_folding = 1 
call neomake#configure#automake('nrwi', 500)


hi HighlightedyankRegion cterm=reverse gui=reverse


" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000
colorscheme gruvbox
set foldmethod=syntax
hi Normal guibg=NONE ctermbg=NONE
set number
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=99  " close all folds
let g:anyfold_fold_comments=1



" BASH
" nnoremap bs i#!/bin/bash/<ESC>o
nnoremap bs i#!/bin/bash/<ESC>o<ESC>ofunction main(){<ESC>o<ESC>o}<ESC>ki<S-TAB>


