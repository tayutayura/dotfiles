#!/bin/bash

sudo yum -y install gcc\
                    gcc-c++\
                    make\
                    openssl-devel\
                    bzip2\
                    bzip2-devel\
                    zlib-devel\
                    readline-devel\
                    sqlite-devel\
                    sqlite\
                    zlib-devel


asdf plugin-add python https://github.com/tuvistavie/asdf-python.git

python2='2.7.14'
python3='3.6.4'

asdf install python "${python2}"
asdf global python "${python2}"

pip2 install neovim

asdf install python "${python3}"
asdf global python "${python3}"

if type nvim; then
  pip3 install neovim

  echo "NOTE: Add following lines to 'init.vim'"
  echo "let g:python_host_prog = \$HOME . '/.asdf/installs/python/${python2}/bin/python2'"
  echo "let g:python3_host_prog = \$HOME . '/.asdf/installs/python/${python3}/bin/python3'"
fi
