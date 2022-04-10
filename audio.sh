#!/bin/sh
for i in /proc/[0-9]*/fd/*
do
    var="$(readlink $i)"
    if test x"$var" != x"${var#/dev/snd/pcm}"
    then
        echo $i
    fi
done
