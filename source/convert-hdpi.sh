#!/bin/bash
icon[0]='../hdpi'

size[0]='72'
for file in $(ls *svg)
do
  name=${file%%.svg}
  inkscape $name.svg --export-png=$name.png --export-height=${size[x]} --export-width=${size[x]}
  mv $name.png ${icon[i]}
done
