#!/bin/bash

PKG_PATH=$1
PACKAGE_JSON=$1/"package.json"

echo '**** Working Directory :' $PKG_PATH
echo $PACKAGE_JSON

if [ -f "$PACKAGE_JSON" ]
then

  echo "*** NPM Install In Progress ***"
  npm install
  echo "*** NPM Install In Complete ***"

else
  echo "Package NOT Exists"
fi


echo $PKG
