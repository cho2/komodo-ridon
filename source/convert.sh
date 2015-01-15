#!/bin/bash
icon[0]='../mdpi'
icon[1]='../hdpi'
icon[2]='../xhdpi'
icon[3]='../xxhdpi'
icon[4]='../xxxhdpi'

size[0]='48'
size[1]='72'
size[2]='96'
size[3]='144'
size[4]='192'
for file in $(ls *svg)
do
  name=${file%%.svg}
  inkscape $name.svg --export-png=$name.png --export-height=${size[x]} --export-width=${size[x]}
  mv $name.png ${icon[i]}
done
