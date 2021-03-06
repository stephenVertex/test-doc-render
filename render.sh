#!/bin/bash

cd /wdir
mkdir -p out
cat *.md > out/tmp.md
ls /root/.pandoc/templates
pandoc --from=gfm --to=latex --template /root/.pandoc/templates/eisvogel.latex --output out/report.pdf -V titlepage -V title:"Australian Aeronautics Technical Manual" -V toc-own-page -V titlepage-color:"2e9fff" --toc out/tmp.md


