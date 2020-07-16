# create document structure

Get-ChildItem -Path chapters\* -Filter *.md -Recurse | % { $_.FullName } > structure\documentStructure_windows.txt

# this little script searches the chapters directory relative to the path you're working in and produces a text file made up of the full path of all of the chapters in your dissertation