#!/bin/bash
icon[0]='../xhdpi'

size[0]='96'
for file in $(ls *svg)
do
  name=${file%%.svg}
  inkscape $name.svg --export-png=$name.png --export-height=${size[x]} --export-width=${size[x]}
  mv $name.png ${icon[i]}
done
