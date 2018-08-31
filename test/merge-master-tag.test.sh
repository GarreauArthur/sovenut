#!/bin/bash
# this script helps to test if when we merge a branch to master
# the tag release-version is added
#---INIT-----------------------------------------------------------------------
mkdir testingsovenuthooks
cd testingsovenuthooks
git init
echo "bla" > bla
git add bla
git commit -m "init commit"
git checkout -b develop
cp ../../hooks/* ./.git/hooks/ # copy all script to .git/hooks/
#---TEST-----------------------------------------------------------------------
echo "oijoijoi">>bla
git add bla
git commit -m "testing"
git checkout master
git merge develop --no-ff
git gol
#---END------------------------------------------------------------------------
cd ..
rm -rf testingsovenuthooks
