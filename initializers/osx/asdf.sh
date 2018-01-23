#!/bin/bash

echo -e "\033[0;32m[asdf] Install dependencies\033[0;39m"

brew install coreutils\
              automake\
              autoconf\
              openssl\
              libyaml\
              readline\
              libxslt\
              libtool\
              unixodbc

echo -e "\033[0;32m[asdf] Clone asdf from Github\033[0;39m"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.1

{
    echo ""
    echo "Please add the following settings to '.bashrc'"
    echo "--------------------------------------------------"
    echo ""
    echo "# SETUP asdf."
    echo ". $HOME/.asdf/asdf.sh"
    echo ". $HOME/.asdf/completions/asdf.bash"
    echo ""
    echo "--------------------------------------------------"
}
echo -e "\033[0;32m[asdf] Complete!\033[0;39m\n"

# exec $SHELL -l

for file in ${INIT_DIR}/asdf.d/*.sh; do
  source ${file}
done
