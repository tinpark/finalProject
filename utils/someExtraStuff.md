# Make Tufte HTML

pandoc documentHeader.md README.md someExamples.md references.md -s --katex --section-divs --from markdown+tex_math_single_backslash --filter pandoc-sidenote --to html5+smart --template=tufte-css/tufte.html5 --filter pandoc-citeproc  --css tufte-css/tufte.css --css tufte-css/pandoc.css --css tufte-css/pandoc-solarized.css --css tufte-css/tufte-extra.css --toc -o test.html

# Make HTML with simple sidebar
pandoc \chapters\documentHeader.md \chapters\README.md \chapters\someExamples.md \chapters\references.md -s --mathjax --toc --filter pandoc-citeproc -o test2.html


# sox render a png example

This takes 15 seconds of the sound and renders out a spectrogram focusing on the first 6k of frequencies. Note the labels you can add in `""` below.

`sox sounds/asound.wav -n rate 12k trim 10 15 spectrogram -h -m -p 3 -z 120 -y 300 -t "a sound from my hydrasynth" -c "asound" -o sounds/asound.png`
