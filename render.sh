#!/bin/bash

cd /wdir
mkdir -p out
cat *.md > out/tmp.md
pandoc --from=markdown_github --to=latex --template ~/.pandoc/templates/eisvogel --output out/report.pdf -V titlepage -V title:"Australian Aeronautics Technical Manual" -V toc-own-page -V titlepage-color:"2e9fff" --toc out/tmp.md

