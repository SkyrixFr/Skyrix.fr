#!/bin/bash

echo compiling smu
make clean
make

echo cleaning files
rm -r out
mkdir -p out/posts

echo copying stylesheets
cp in/style.css out/style.css

echo finding and processing every markdown files
for markdown_file in in/*.md; do
    filename=$(basename "$markdown_file")
    filename_without_extension="${filename%.*}"
    ./smu "$markdown_file" > "out/${filename_without_extension}.html"
done
echo all done!