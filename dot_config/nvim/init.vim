
set nu                     " Line numbers
set clipboard+=unnamedplus " System clipboard
set signcolumn=number      " Code signals in line number column
set mouse=a                " Scroll with mouse wheel
set tabstop=2              " The width of a TAB is set to 4.
set shiftwidth=2           " Indents will have a width of 4
set softtabstop=2          " Sets the number of columns for a TAB
set expandtab              " Expand TABs to spaces

" CoC GoTo Bindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_node_path = "/home/jcuffe/.nvm/versions/node/v17.5.0/bin/node"
let g:clipboard = {
\   'name': 'system',
\   'copy': {
\      '+': ['tmux', 'load-buffer', '-w', '-'],
\      '*': ['tmux', 'load-buffer', '-w', '-'],
\    },
\   'paste': {
\      '+': ['tmux', 'save-buffer', '-'],
\      '*': ['tmux', 'save-buffer', '-'],
\   },
\   'cache_enabled': 1,
\ }

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" Override silly default Ag options
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Invoke Prettier 
nmap <silent> <F1> :CocCommand prettier.formatFile<CR> 
" Rename token
nmap <silent> <F2> :CocCommand document.renameCurrentWord<CR> 
" Toggle source tree
nmap <silent> <F3> :NERDTreeToggle<CR>
" Find current file in tree
nmap <silent> <F4> :NERDTreeFind<CR>
" Fuzzy file Search
nmap <silent> <F5> :Files<CR> 
" Fuzzy full text search
nmap <silent> <F6> :Ag<CR>
