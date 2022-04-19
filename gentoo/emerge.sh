#!/bin/bash

emerge -avt app-eselect/eselect-repository

eselect repository create kumao 

for repo in $(cat $HOME/dot/gentoo/repositories); do
    eselect repository enable $repo
done

cp -r $HOME/dot/gentoo/repo/* /var/db/repos/kumao/

emerge -avt \
    $(awk 'BEGIN {RS=""}{gsub(/\n/," ",$0); print $0}' $HOME/dot/gentoo/world)
