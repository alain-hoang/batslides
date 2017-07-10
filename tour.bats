#!/usr/bin/env bash
#

slideshow() {
    for sl in slide*.sh
    do
	clear
	./$sl
	export SLIDE_FILE="$sl"
	read
	TEST_DESCR=$(tail -n 1 $SLIDE_FILE | sed -e 's/^###//') bats testslide.bats
	echo ""
	echo "Next slide..."
	read NEXT
    done
}


slideshow
