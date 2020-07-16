# some examples {#examples}

## linking to files, websites and cross referencing {#crossRef}
Linking to things in your documents is important.

### Crossreferences
Cross references are handy. They enable the reader to hop around the document and each segment of the document can be tagged to enamble this. For example, there is a section below called *Equations*. I've put that in italics with like this `*Equations*`. To make it a hot link to that section, I need to give that section a label. In this case `{#equations}`.

When I want to refer to that section, all I need to do is type the text I want to be seen in square brackets, followed by the reference in round brackets, like this:

~~~~
[link text the reader sees](#equations)
~~~~

In the finished document, it should look like this and take you straight to the [equations](#equations) section.

### links to websites {#websiteLinks}

Linking to a website follows the same structure, `[]()`. So type what you want to be seen, followed by the [link](http://www.tinpark.com).

`[looks like this](http://www.tinpark.com)`

## Images {#images}

Images are handled very simply and there is a nice Atom snippet which starts you off. Type `img` and press the `tab` key. It automatically creates the construction

`![]()`

Type in the label in square brackets and a link to the file in round brackets:

![A semi-random screenshot](images/ScreenShot_Random.png){#labelTheImage}

You can refer to the image from anywhere in the document using a tag. In this case I've added `{#labelTheImage}` to the end of the string.

It looks like this:

`![A semi-random screenshot](images/ScreenShot_Random.png){#labelTheImage}`

Now in my text I can refer to the image from anywhere by using that tag. For example, the image of [my screen](#labelTheImage) above was taken by [Martin Parker](http://tinpark.com).

The sentence obove looks like this in `.md`;  

`For example, the image of [my screen](#labelTheImage) above was taken by [Martin Parker](http://tinpark.com).`

## Citations

[@smalley_spectromorphology_1997-1, @vulture_sickest_2019]
[@parker_final_2019]

## Equations {#equations}

(@linear)
$$x=y$$

(@triangle)
$$a^2 + b^2 = c^2$$

(@quadratic)

When $a \ne 0$, there are two solutions to \(ax^2 + bx + c = 0\) and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$.

## Linking to actual files such as videos or scripts

This is a similar process to adding images or links. Note however that certain PDF readers like Apple's *preview* won't like you linking to an external file. Adobe Reader will also complain at least initially. However, it's super handy to link directly to code, both in HTML and PDF.

Here's how we do it:
[The useful shell script kept inside **utils/makeDocs.sh**](utils/makeDocs.sh)

`[The useful shell script kept inside **utils/makeDocs.sh**](utils/makeDocs.sh)`

## Tables

In Atom, type `table > tab` to get a basic table started:

| Header One     | Header Two     |   
| :------------- | :------------- |
| Item One       | Item Two       |
| line two       | Item three     |
| Item One       | Item Two       |
| line two       | Item three     |

The markdown looks like this:

~~~~~~~~~
| Header One     | Header Two     |   
| :------------- | :------------- |
| Item One       | Item Two       |
| line two       | Item three     |
| Item One       | Item Two       |
| line two       | Item three     |

~~~~~~~~~

If you want to make a fancier table, you can use this website to help you:

<https://www.tablesgenerator.com/markdown_tables>.

Or you can make a table dynamically with a .csv file but this requires that you install a pandoc- filter. If you're curious, have a look [here](https://hackage.haskell.org/package/pandoc-csv2table).

## footnotes
Use these sparingly[^FN] this is because you don't want your reader getting too distracted. Think carefully before embedding something in a footnote.

[^FN]: It might be more useful in the main body of the text, or it might not be worth saying.

## sounds and video media

These are easily embedded in the same way as images and work perfectly in `pandoc` HTML export. However, you can't embed the videos and sounds into a PDF very easily so it's better to put a link to the files in as well.

![a sound - something from my hydrasynth](_sounds/asound.wav)
[link to the sound file](_sounds/asound.wav)

![a film - really old from 2011](_videos/avideo.mov)
[link to the video file](_videos/avideo.mov)
