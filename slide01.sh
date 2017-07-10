#!/bin/bash
#Background Colors
E=$(tput sgr0);    R=$(tput setab 1); G=$(tput setab 2); Y=$(tput setab 3);
B=$(tput setab 4); M=$(tput setab 5); C=$(tput setab 6); W=$(tput setab 7);

# pixel sizes
width="  ";
height=1;

function e() { echo -e "$E"; }
function x() { echo -n "$E$width"; }
function r() { echo -n "$R$width"; }
function g() { echo -n "$G$width"; }
function y() { echo -n "$Y$width"; }
function b() { echo -n "$B$width"; }
function m() { echo -n "$M$width"; }
function c() { echo -n "$C$width"; }
function w() { echo -n "$W$width"; }

#putpixels
function u() { 
    h="$*";o=${h:0:1};v=${h:1}; 
    for i in `seq $v` 
    do 
        $o;
    done 
}

img="\
x40 e1 x18 w4 x4 w2 x2 w5 x2 w3 e1 x3 w8 x7 w1 x3 w1 x2 w1 x2 w1 x3 w1 x3 w1 x3 e1 x2 w1 x8 w1 x6 w1 x3 w1 x2 w1 x2 w1 x3 w1 x3 w1 x3 e1 x2 w1 x8 w1 x6 w1 x3 w1 x2 w1 x2 w1 x3 w1 x3 w1 x3 e1 x2 w1 x8 w1 x6 w4 x3 w4 x3 w1 x3 w4 e1 x2 w1 x8 w1 x6 w1 x3 w1 x2 w1 x2 w1 x3 w1 x6 w1 e1 x2 w1 x8 w1 x6 w1 x3 w1 x2 w1 x2 w1 x3 w1 x6 w1 e1 x2 w1 x8 w1 x6 w1 x3 w1 x2 w1 x2 w1 x3 w1 x6 w1 e1 x2 w1 x8 w1 x6 w4 x3 w1 x2 w1 x3 w1 x3 w3 x1 e1 x2 w1 x8 w1 x28 e1 x2 w10 x28 e1 x2 w1 x8 w1 x7 w5 x2 w3 x2 w1 x2 w1 x1 w3 x1 e1 x2 w1 x8 w1 x9 w1 x3 w1 x3 w1 x1 w1 x2 w1 x1 w1 x2 w1 e1 x2 w1 x8 w1 x9 w1 x3 w1 x3 w1 x1 w1 x2 w1 x1 w1 x2 w1 e1 x2 w1 x8 w1 x9 w1 x3 w1 x3 w1 x1 w1 x2 w1 x1 w3 x1 e1 x2 w1 x8 w1 x9 w1 x3 w1 x3 w1 x1 w1 x2 w1 x1 w1 x2 w1 e1 x2 w1 x8 w1 x9 w1 x3 w1 x3 w1 x1 w1 x2 w1 x1 w1 x2 w1 e1 x21 w1 x4 w3 x3 w2 x2 w1 x2 w1 e1 x40 e1 x40 e1 x40 e1 x40"


line=""
for n in $img
do
    if [ "$n" = "e1" ]; then
        for i in `seq 1 $height`; do
            echo -n "$line"
            e
        done
        line=""
    else
      line="${line}$(u "$n")";
    fi
done
for i in `seq 1 $height`; do
    echo -n "$line"
    e
done
exit 0;
###Show Title
