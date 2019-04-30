#!/bin/sh
echo "Enter key (-O0 = 0; -O1 = 1; -O2 = 2; -O3 = 3; -Os = s; no key = none "
read n;
if ( (echo $1 | grep -E -q "^([0-4])|(s)|(none)$") )
    then 
    echo "Incrorrect"
    exit
    else
case $n in
    0) g++ -c main.c -o main.o -O0 ;;
    1) g++ -c main.c -o main.o -O1 ;;
    2) g++ -c main.c -o main.o -O2 ;;
    3) g++ -c main.c -o main.o -O3 ;; 
    s) g++ -c main.c -o main.o -Os ;;
    none) g++ -c main.c -o main.o ;;
esac
    time ./a.out
    du -b main.o 
fi       

