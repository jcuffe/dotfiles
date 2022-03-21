set nu                     " Line numbers
set clipboard+=unnamedplus " System clipboard
set signcolumn=number      " Code signals in line number column
set mouse=a                " Scroll with mouse wheel
set tabstop=2              " The width of a TAB is set to 4.
set shiftwidth=2           " Indents will have a width of 4
set softtabstop=2          " Sets the number of columns for a TAB
set expandtab              " Expand TABs to spaces

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" Override silly default Ag options
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Fuzzy full text search
nmap <silent> <F1> :Ag<CR>
" Fuzzy file Search
nmap <silent> <F2> :Files<CR> 
