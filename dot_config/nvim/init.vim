
set nu                " Line numbers
set signcolumn=number " Code signals in line number column

set mouse=a           " Scroll with mouse wheel

set tabstop=2         " The width of a TAB is set to 4.
set shiftwidth=2      " Indents will have a width of 4
set softtabstop=2     " Sets the number of columns for a TAB
set expandtab         " Expand TABs to spaces

" CoC GoTo Bindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" File finder toggles
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>

let g:coc_node_path = "/home/jcuffe/.nvm/versions/node/v17.5.0/bin/node"

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
