" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'janko-m/vim-test'
NeoBundle 'rking/pry-de', {'rtp': 'vim/'}
NeoBundle 'tpope/vim-surround'

if executable('ag')
  NeoBundle 'rking/ag.vim'
elseif executable('ack-grep')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
  Bundle 'mileszs/ack.vim'
elseif executable('ack')
  NeoBundle 'mileszs/ack.vim'
endif

NeoBundle 'fatih/vim-go'
NeoBundle 'crahles/vim-gometalinter.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rails'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'tpope/vim-haml'
NeoBundle 'evanmiller/nginx-vim-syntax'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
