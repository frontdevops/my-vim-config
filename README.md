# My Geek Vim

My simple Vim configuration for editing any source code.

Suitable for all geeks `¯\_(ツ)_/¯`

![Example of my VIM workspace screenshot](https://github.com/frontdevops/my-vim-config/blob/main/screen-1.png)


## Installation
1. Install [Vundle](https://github.com/VundleVim/Vundle.vim)

   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Install plugins

   `$ vim +PluginInstall +qall`

3. Build [vimproc](https://github.com/Shougo/vimproc.vim) library

   `$ cd $HOME/.vim/bundle/vimproc.vim/ && make`

5. Compile [YCM](https://github.com/Valloric/YouCompleteMe) with JavaScript and C-like languages support

   `$ $HOME/.vim/bundle/YouCompleteMe/install.py --tern-completer --clang-completer`


### License
Free for all without any guarantees

[Read license](https://github.com/frontdevops/my-vim-config/blob/main/LICENSE)
