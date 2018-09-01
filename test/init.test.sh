#!/bin/bash
# this script helps to test if when we merge a branch to master
# the tag release-version is added
#---INIT-----------------------------------------------------------------------

# did the user specified a branch
branch=''
if [[ $# -lt 1 ]]; then
  branch="develop"
else
  branch=$1
fi
mkdir testingsovenuthooks
cd testingsovenuthooks
git init
echo "bla" > bla
git add bla
git commit -m "init commit"
git checkout -b "$branch"
cp ../../hooks/* ./.git/hooks/ # copy all script to .git/hooks/
#---TEST-----------------------------------------------------------------------
# we can now test things

