#!/bin/sh

if [ -z $2 ]; then
    echo "Usage:\n      npx degit repo my-project"
    exit 0;
fi

git clone $1 $2 

if [ $? -ne 0 ]; then
    exit 0;
fi

cd $2 
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done && git fetch --all && git pull --all && git remote remove origin