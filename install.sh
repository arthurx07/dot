#!/bin/bash
folders=`ls -d $HOME/dot/*/ | awk '{print $8}'`

for i in $(ls -d */)
do
    stow -D $i
    stow $i
done
