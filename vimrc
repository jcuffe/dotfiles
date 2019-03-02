" visual treats
syntax enable
set nu
set background=dark

set autoindent
set smartindent

" encourage frequent commits
set noswapfile

" save file on change
autocmd TextChanged,TextChangedI <buffer> silent write

" tabstops for each language
autocmd filetype javascript set softtabstop=2 shiftwidth=2 expandtab
autocmd filetype python set softtabstop=4 shiftwidth=4 expandtab
autocmd filetype java set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" custom mappings

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" get out of insert quickly
inoremap jj <esc>
