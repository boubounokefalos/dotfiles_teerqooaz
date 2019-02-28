#!/bin/sh

if ! updates=$(apt list --upgradable 2> /dev/null | wc -l); then
    updates=0
fi

if [ "$updates" -gt 1 ]; then
    echo ""
else
    echo ""
fi
