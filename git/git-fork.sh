#!/bin/bash

upstream_url=$1

declare -r REF=refs/notes/upstream
declare -r EMPTY_TREE=$(git hash-object -t tree /dev/null)

#set
git notes --ref=$REF add -f -m "$upstream_url" $EMPTY_TREE

#get
git notes --ref=$REF show $EMPTY_TREE
