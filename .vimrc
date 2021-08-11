""""""""""""""""""""""""""""""""""""""""""""""""
" Init variables						 {{{
"
	" Set vim home directory
	if has("win32") || has('win64')
		let $VIMHOME = $HOME."/vimfiles/"
	else
		let $VIMHOME = $HOME."/.vim/"
	endif
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""
" Init settings						 {{{
"
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256
syntax on "Включить подсветку синтаксиса
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=UTF-8 " Кодировка файлов по умолчанию
set termencoding=UTF-8 "Кодировка терминала
set fileencodings=utf8,cp1251
scriptencoding utf-8
" }}}


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'

Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

Plugin 'preservim/tagbar.git'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line







""""""""""""""""""""""""""""""""""""""""""""""""
" Load basic settings					 {{{
"
	source $VIMHOME/theme.vim
	source $VIMHOME/editor.vim
	source $VIMHOME/keybindings.vim
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
" Load local settings					 {{{
"
if filereadable($PWD."/.vi")
    source $PWD/.vi
endif
" }}}


" EOF "