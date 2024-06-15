#!/bin/bash
# This code is used for automating the process of the website creation
# See LICENSE for further informations


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

for markdown_posts_file in in/posts/*.md; do
    filename=$(basename "$markdown_posts_file")
    filename_without_extension="${filename%.*}"
    ./smu "$markdown_posts_file" > "out/posts/${filename_without_extension}.html"
done

echo all done!