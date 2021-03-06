#!/bin/bash

brew__install()
{
  if ! type brew 1> /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    info "brew has already installed!"
  fi
}

brew__bundle()
{
  (
    cd ${DWARF_BASE_DIR}
    brew bundle
  )
}

brew__install
brew__bundle
