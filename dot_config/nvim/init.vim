" Ensure that the latest version of node is used regardless of CWD setting
let $latest_node = '/home/jcuffe/.nvm/versions/node/v17.5.0/bin'
let $PATH = $latest_node . ':' . $PATH
let g:node_host_prog= $latest_node . '/neovim-node-host'

set nu                     " Line numbers
set clipboard+=unnamedplus " System clipboard
set signcolumn=number      " Code signals in line number column
set tabstop=2              " The width of a TAB is set to 4.
set shiftwidth=2           " Indents will have a width of 4
set softtabstop=2          " Sets the number of columns for a TAB
set expandtab              " Expand TABs to spaces

call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

lua <<EOF
  local lsp = require 'lspconfig'
  local coq = require 'coq'

  local custom_attach = function(client)
    -- Use LSP as the handler for omnifunc.
    --    See `:help omnifunc` and `:help ins-completion` for more information.
    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Use LSP as the handler for formatexpr.
    --    See `:help formatexpr` for more information.
    vim.api.nvim_buf_set_option(0, 'formatexpr', 'v:lua.vim.lsp.formatexpr')
  end

  lsp.tsserver.setup(coq.lsp_ensure_capabilities { on_attach = custom_attach })
EOF

" Override silly default Ag options
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Fuzzy full text search
nmap <silent> <F1> :Ag<CR>
" Fuzzy file Search
nmap <silent> <F2> :Files<CR> 
