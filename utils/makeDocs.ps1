
# massive thanks to Rob Parker for help with this powershell script
# cd into your root working directory, then open powershell in admin mode and run utils\makeDocs.ps1
# the command will look like this powershell.exe .\utils\makeDocs.ps1 myDissertationName
# where myDissertationName is the file name you'd like your outputs to have
# get argument from input

param([string]$outputFileName="replaceThisName") #Must be the first statement in your script

# get the envrionment paths for your home folder - TODO, this isn't complete but ultimately you should be able to run this script from anywhere, perhaps simply specifying the path to the form.md document as an argument
$mydocuments = [environment]::getfolderpath("mydocuments")

# create the structure file if it doesn't exist
Get-ChildItem -Path .\chapters\* -Filter *.md -Recurse | % { $_.FullName } | Out-File -FilePath .\structure\documentStructure_windows.txt

# list the structure of your dissertation from the form.md list created earlier
$list=get-content -path "structure\documentStructure_windows.txt"

# make sure your list is a list and ready
$listString=[string]$list

# setup the pandoc commands:
$commandHTML="pandoc $($listString) -s --mathjax --toc --toc-depth 2 --filter pandoc-citeproc  -o $($outputFileName).html"
$commandPDF="pandoc styling\pdfStyle.yaml $($listString) --lua-filter utils\linkFlat.lua --mathjax --filter pandoc-citeproc --pdf-engine=xelatex -s --toc --toc-depth 2 -o $($outputFileName).pdf"
$commandWORD="pandoc $($listString) -s --mathjax --toc --toc-depth 2 --filter pandoc-citeproc  -o $($outputFileName).docx"
$commandEPUB="pandoc $($listString) -s --mathjax --toc --toc-depth 2 --filter pandoc-citeproc  -o $($outputFileName).epub"

# if you want to style things in inDesign later, you can export to ICML

$commandICML="pandoc $($listString) -s --mathjax --toc --toc-depth 2 --filter pandoc-citeproc  -o $($outputFileName).icml"

# run the commands with Invoke-Expression, uncomment the files you want to render out
Invoke-Expression -Command $commandHTML
Invoke-Expression -Command $commandPDF
#Invoke-Expression -Command $commandWORD
#Invoke-Expression -Command $commandEPUB
#Invoke-Expression -Command $commandICML

# open your files
Invoke-Item -path "$($outputFileName).html"
Invoke-Item -path "$($outputFileName).pdf"
#Invoke-Item -path "$($outputFileName).docx"
