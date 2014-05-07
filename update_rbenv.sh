#!/bin/bash

################
# rbenv update #
################
echo "Updating rbenv..."
cd ~/.rbenv
git pull -q

##################
# Plugin updates #
##################
echo "Updating rbenv plugins..."
for d in ~/.rbenv/plugins/*; do
  cd $d
  git pull -q
done
