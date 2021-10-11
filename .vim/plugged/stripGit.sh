#! /bin/sh
CDIR=`pwd`
for i in `ls`; do
    echo "$i"
    cd ${i}
    rm -rf .git 
    cd ${CDIR}
done
