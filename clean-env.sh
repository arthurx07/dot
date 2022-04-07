#!/bin/bash

for i in $(ls -d */)
do
    stow -D $i
done
