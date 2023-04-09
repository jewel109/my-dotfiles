#!/bin/bash

file=$(pwd)/.git
if [ -d "$file" ]; then
  echo "$file  found"
  
  postCommitFile=$HOME/utils/post-commit/post-commit
  
  if [ -e "$postCommitFile" ]; then
    
    echo "$postCommitFile  alreadey exists"
  else
    cp $postCommitFile $file/hooks/ 
  fi
else
  echo "$file  not found"
fi

