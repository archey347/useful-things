#!/usr/bin/env bash

# Download

TEMPDIR=`mktemp -d`
cd $TEMPDIR
git clone https://github.com/archey347/useful-things.git useful


# Move everything to where it needs to be
cd useful

cp ./.nanorc ~/.nanorc
cp ./.bashrc ~/.bash_aliases
cp ./.gitconfig ~/.gitconfig

cd ../..

rm -r $TEMPDIR

echo "SUCCESS :)"


