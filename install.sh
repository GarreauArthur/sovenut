#!/bin/bash

set -o errexit                     # stop the execution if an error occurs

git --version                      # check if git is install
git_dir=$(git rev-parse --git-dir) # get path to .git
                                   # clone the repo
git clone https://github.com/GarreauArthur/sovenut.git

mv -t "$git_dir/hooks/" ./sovenut/hooks/* # copy all script to .git/hooks/
rm -rf sovenut                     # delete the repo

