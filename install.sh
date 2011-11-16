#!/bin/sh

git clone git://github.com/tpope/vim-pathogen.git

mkdir bundle
cd bundle

git clone git://github.com/choptastic/vimerl.git
git clone git://github.com/tpope/vim-fugitive.git

cd ..

mv ~/.vim ~/.vim-old
mv ~./.vimrc ~/.vimrc-old

mkdir ~/.vim

ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/vim-pathogen/autoload ~/.vim/autoload
ln -s `pwd`/bundle ~/.vim/bundle
