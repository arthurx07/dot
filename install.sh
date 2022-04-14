#!/bin/bash

for i in $(ls -d $HOME/dot/*/ | awk '{gsub("/home/kumao/dot/", "");print}' | awk '{gsub("gentoo/", "");print}')
do
    stow -D $i
    stow $i
done
