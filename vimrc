set nocompatible              " be iMproved, required
filetype plugin indent on    " Enable filetype-specific indenting
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
"To autocomplete snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/nginx.vim' 
"Plugin 'honza/vim-snippets'
"Bundle 'activebridge/rails-snippets'
"Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
     
" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
"Plugin 'file:///home/gmarik/path/to/plugin'
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
:set fileformat=unix
:set runtimepath^=~/.vim/bundle/ctrlp.vim



set smartindent
set autoindent
set ignorecase
set incsearch
set title
set number
highlight LineNr ctermfg=grey


syntax on             " Enable syntax highlighting


set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set textwidth=80 



" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp\|bin$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }


autocmd BufRead,BufNewFile /etc/nginx/sites-*/* setfiletype nginx
" ruby path if you are using RVM

"provide ruby path, otherwise vim slows down on startup
let g:ruby_path = '/usr/share/rvm/rubies/jruby-9.1.13.0/bin/ruby'
set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m

"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set foldmethod=indent
set foldnestmax=2 "dont like deep indentation


let mapleader = ";"
nmap <leader>nt :NERDTreeToggle<cr>


"include tags until root directory
set tags=./tags;/
"ctags -R --exclude=log --exclude=node_modules --exclude=.git --exclude=tmp
"--exclude=bin


runtime macros/matchit.vim "to match do/end by pressing %
