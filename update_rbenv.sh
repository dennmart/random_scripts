#!/bin/bash

################
# rbenv update #
################
echo "Updating rbenv..."
cd ~/.rbenv
git pull

########################
# Plugin updates below #
########################

echo "Updating ruby-build plugin..."
cd ~/.rbenv/plugins/ruby-build
git pull


echo "Updating rbenv-gem-rehash plugin..."
cd ~/.rbenv/plugins/rbenv-gem-rehash
git pull
