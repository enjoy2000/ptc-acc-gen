#!/bin/bash
name=PogoPlayer/accounts
if [[ -e $name.csv ]] ; then
    i=0
    while [[ -e $name-$i.csv ]] ; do
        let i++
    done
    name=$name-$i
fi
DEBUG=nightmare xvfb-run --server-args="-screen 0 1024x768x24" node index.js
cd PogoPlayer
xvfb-run --server-args="-screen 0 1024x768x24" node pogo.js
echo "Find the generated accounts in PogoPlayer/accounts.csv"
