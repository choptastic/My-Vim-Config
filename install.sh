#!/bin/sh

rm -frv vim-pathogen
rm -frv bundle

git clone git://github.com/tpope/vim-pathogen.git

mkdir bundle
cd bundle

git clone git://github.com/choptastic/vimerl.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/jceb/vim-orgmode.git
git clone git://github.com/goldfeld/vim-seek.git

cd ..

mv ~/.vim ~/.vim-old
mv ~/.vimrc ~/.vimrc-old

mkdir ~/.vim

ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/vim-pathogen/autoload ~/.vim/autoload
ln -s `pwd`/bundle ~/.vim/bundle


echo "Vim configuration installed in `pwd`/.vim and `pwd`/.vimrc"
