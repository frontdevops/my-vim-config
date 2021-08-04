# Upd for latest version 8.2

yum install -y ncurses ncurses-devel
yum install -y ctags tcl-devel \
          ruby ruby-devel \
          lua lua-devel \
          luajit luajit-devel \
          python python-devel \
          perl perl-devel \
          perl-ExtUtils-ParseXS \
          perl-ExtUtils-XSpp \
          perl-ExtUtils-CBuilder \
          perl-ExtUtils-Embed



yum list installed | grep -i vim
yum remove vim-enhanced vim-common vim-filesystem

git clone https://github.com/vim/vim.git
cd vim


./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --enable-perlinterp \
            --enable-luainterp


make && make install
vim -version | less




cd
curl -O "https://raw.githubusercontent.com/frontdevops/myvim/main/.vimrc"

# Then run
# :PluginInstall

# or for remove and update
# :PluginUpdate
