#!/bin/bash

GITURL=$1
GITBRANCH=$2
REPOSITORY=$(echo $GITURL | awk -F/ '{print $NF}' | sed -e 's/.git$//');

echo '******************* GIT INPUTS *******************'
echo '     GITURL :' $GITURL
echo '  GITBRANCH :' $GITBRANCH
echo ' REPOSITORY :' $REPOSITORY
echo '******************* GIT INPUTS *******************'

if [ -d "$REPOSITORY" ]; then
  echo '**** REPOSITORY $REPOSITORY EXISTS  ****'
  echo '**** REMOVING $REPOSITORY FOR CLONE ****'
  rm -rf $REPOSITORY
  echo '**** REMOVING $REPOSITORY AND SETUP FOR CLONE ****'
fi

echo '**** CLONING REPOSITORY START****'
git clone $GITURL
cd $REPOSITORY
git checkout $GITBRANCH

echo '**** CLONING REPOSITORY COMPLETE ****'$PWD

../resolve-dependencies.sh $PWD


# git branch $GITBRANCH
#git checkout $GITBRANCH
