if &compatible
  set nocompatible               
endif

set runtimepath+=~/.plugins/neovim/repos/Shougo/dein.vim
if dein#load_state('~/.plugins/neovim')
  call dein#begin('~/.plugins/neovim')
  call dein#add('~/.plugins/neovim/repos/Shougo/dein.vim')

  call dein#add('itchyny/lightline.vim')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('scrooloose/nerdtree')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Autopairs config
let g:AutoPairsFlyMode = 1
let g:AutoPairsCenterLine = 0

" Lightline config
set noshowmode

" Source code config
set number
set expandtab
set shiftwidth=2
set tabstop=2

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
