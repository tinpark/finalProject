#!/bin/sh
#
#  makeDocs.sh

#  Created by PARKER Martin on 08/05/2019.
#   This is a script to quickly make 4 different output files with pandoc from a range of .md files.
############# usage ##############
# cd directory/with/yourFinalProjectFiles/
# bash utils/makeDocs.sh outputFileName
# this will make you .html, .pdf, .docx & an ebook in epub format called outputfileName, change this argument for whatever file name you like.

outputName=$1
if [ ! -d "structure" ]
  then
  mkdir structure
fi

if [ ! -f "structure/documentStructure_OSX.md" ]
  then
  ls chapters/*.md >> structure/documentStructure_OSX.md
fi

# Make some HTML
pandoc `cat structure/documentStructure_OSX.md` --filter pandoc-citeproc --toc --toc-depth 2 -s --mathjax -f markdown -t html5 -o $outputName.html

open $outputName.html

# Make a PDF
pandoc styling/pdfStyle.yaml `cat structure/documentStructure_OSX.md` --lua-filter utils/linkFlat.lua --mathjax --quiet --toc --toc-depth 2 --filter pandoc-citeproc --standalone --pdf-engine=xelatex -o $outputName.pdf

open $outputName.pdf

# Make an ebook
pandoc `cat structure/documentStructure_OSX.md`  --toc --toc-depth 2 --filter pandoc-citeproc -s --mathjax -o $outputName.epub

docX make a word document from your structure
pandoc `cat structure/documentStructure_OSX.md` --toc --toc-depth 2 --filter pandoc-citeproc -s --mathjax -o $outputName.docx
