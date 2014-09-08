#!/usr/bin/env bash
set -e

for filename in ./.*; do
    bn=$( basename $filename)
    if [ "$bn" != "." -a "$bn" != ".." -a "$bn" != ".git" ]; then
         cp $bn ~/$bn;
    fi
done

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
if [ ! -e vim-colors-solarized ]
then
    git clone git://github.com/altercation/vim-colors-solarized.git
fi
