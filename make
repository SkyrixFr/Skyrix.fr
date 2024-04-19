#!/bin/bash

rm -r out
mkdir -p out/posts

cp in/style.css out/style.css

for markdown_file in in/*.md; do
    filename=$(basename "$markdown_file")
    filename_without_extension="${filename%.*}"
    ./smu "$markdown_file" > "out/${filename_without_extension}.html"
done