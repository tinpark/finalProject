# instructions - academic writing in markdown

## first, download the essentials
### OS X users:

- [Zotero](https://www.zotero.org/download/)
- [BetterbibTex](https://retorque.re/zotero-better-bibtex/installation/) for Zotero (optional, useful)
- [Atom](https://atom.io/) and two packages to extend its use:
    - [wordcount](https://atom.io/packages/wordcount)
    - [autocomplete-bibtex](https://atom.io/packages/autocomplete-bibtex)
- [Homebrew](https://brew.sh/)(needs the command line so open the terminal up, go on, you don’t have to have this, but it makes installing packages very easy)
- [Pandoc](http://www.pandoc.org) `brew install pandoc` (typed on the terminal)


If you intend to style things in `MS word` and make a `PDF` from that, you can stop here. However, if you want to make lovely proper PDF files, you'll also need LaTeX, well worth it IMO:

- [Latex](https://www.latex-project.org/get/) warning , you need 2gb at least for the full install of [MacTex](https://www.tug.org/mactex/), you’ll be glad you have it eventually.

### Windows users

- [Zotero](https://www.zotero.org/download/)
- [BetterbibTex](https://retorque.re/zotero-better-bibtex/installation/) for Zotero (optional, useful)
- [Atom](https://atom.io/) and two packages to extend its use:
    - [wordcount](https://atom.io/packages/wordcount)
    - [autocomplete-bibtex](https://atom.io/packages/autocomplete-bibtex)
- [Chocolatey](https://chocolatey.org/), you don’t have to have this, but it makes installing packages very easy.
- [Pandoc](http://www.pandoc.org) `choco install pandoc`


If you intend to style things in `MS word` and make a `PDF` from that, you can stop here. However, if you want to make lovely proper PDF files, you'll also need `LaTeX`, well worth it IMO:

- [Latex](https://www.latex-project.org/get/) warning , you need 2gb at least for the full [install](https://www.latex-tutorial.com/installation/#Windows).

## Next, clone the template repository to your hard drive
- `cd ~/Documents`
- `git clone https://github.com/tinpark/finalProject`

### what's inside this template?
When you've cloned this package, you'll see a lot of folders. Some are empty, waiting for your content, others are pre-populated with tools and style stuff that should be useful to you.

The idea is that you'll write chapters and possibly sections of chapters as separate `markdown` documents and then use some of the utilities offered here to stitch them together to make a single pdf, docx, ebook and html document.

In the folder called `styling` you'll find `.css` style sheet for the html, some `.yaml` header information which helps to control the way the `.pdf` is rendered and you'll also see a `csl` file called `journal-of-new-music-research.csl`. This controls the way the references you include in your project will be shown. You can, of course, download different style sheets. You may also prefer an alternative `.csl` document. You can get almost anything [from here](https://www.zotero.org/styles).

If you dare, or are already familiar with LaTeX, you can hack around with the `pdfStyle.yaml` document. This controls the way certain aspects of the PDF behave.

Have a look at the bottom of that `styling/pdfStyle.yaml` document. You'll see that you can add author specific information to the footer of your PDF file. Edit around line 27 to get your own website and credentials show up:

`  \fancyfoot[R]{\href{http://tinpark.com}{tinpark.com}}`

The other folder with something interesting inside is called `utils`. Here you'll find a bash script that, when you run it in the terminal will automatically make `.docx`, `.epub`, `.html` and `.pdf` files. It will also automatically open the `.pdf` and `.html` file if rendering them off was a success. See [this section](#next).


### what else do you need?
Two  documents that you really need to have are `documentHeader.md` file and the `references.md` file.
These will conventionally be the first and last documents in your `docStructure.md`. The `doucmentHeader.md` needs editing with your own specific information. This should be fairly straightforward.

You also need a `.bib` file where you'll store all of your citations using `Zotero`. You'll need to know where this is located and point your `documentHeader.md` file to that bib. You can keep the `.bib` file in the `bibliography` folder provided, or keep it elsewhere. Give `documentHeader.md` the full file path to the bibliography.

## Next{#next}
When you have edited the `documentHeader.md`, especially making sure to set a working path a proper .bib file, you could have a go at running the `utils/makeDocs.sh` script. If things work properly, you'll get 4 files, two of which will open automatically, the `.pdf`
 and the `.html`.

That script also creates a `docStructure.md` document in a folder called `structure` if none already exists. When you want to render off your complete project, you should edit the list of files here and put them in the order that you want them to appear in the finished piece of work. This is very handy as you might decide to reorganise your chapters at the last minute. If you do, this will mean all the figures and internal document references will update with the new structure next time you run the script.

To make make the script work, simply head to the terminal:

`cd to/the/directory/you/are working/in`

and run:

`bash utils/makeDocs.sh documentName`

The argument there is the name you want your finished output file name to be called.
