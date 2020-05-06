# Sonotype

An exploration towards using the way we speak to create type forms that are generative towards a universal, inclusive and expressive communication.

[f.y.t/o](https://www.adithyaravi.com), [ZAP](http://www.zachpino.com) and COMPUTERS.

----

### Introduction - Premise and Questions

Chances are that we learnt to communicate with each other using our bodies before we began to communicate using abstract representations, shapes and pictures. Text is probably a method by which we could standardise certain aspects of our communication. How much of our communication through the medium of sound and body is still captured in our textual communications? Why has letterform been created in different languages in the way it has? What could inform our typeforms towards diverse comprehensibility, legibility and expression? 

As we mulled over these questions, our preoccupations with sound and developing an understanding around sound being a distortion of a space-time paradigm began to inspire us towards using our sonic impressions to generate a family of forms.  Our initial impetus to use sound is twofold. 
- Having had my own struggles with understanding and reading type early in life and then subsequently working with young children who struggle with language in a similar way, I was interested in contributing to the development of a typeface that could create a more tangible association between the sounds that we use to communicate and the forms we use to represent the sounds.
- A language, in its spoken form, is characterised by the repertoire of sounds that one can use within that language. These sounds are not just for communicative purposes but are carriers of expression in and of themselves. By using sound, we were keen to translate some of that character and expression into the typeface that is created

-----

### Data - Decisions and Sources

In order to gather the data that we needed, we first had to understand the construction of language. We took inspiration from a variety of languages to understand the ways in which they approach communication auditorily, expressively and visually. Hebrew, Arabic, Latin, Greek, Tamil, Pali, Korean, Tsalagi and Xhosa were amongst the languages that we engaged with. Once we had developed an understanding of the range of options from which a writing system could be constructed, we decided to introduce certain observations of elementary linguistic pedagogy such as focusing on phonetics as a fundamental way to understand the construction of words. 

We began to record our own sound samples for a variety of phonetic sounds and began to understand how they changed either in their amplitudes, frequencies or in their duration. It was then that [Zach](https://github.com/zachpino), pointed us towards a program called [wav2c](https://github.com/olleolleolle/wav2c) that would accept a '.wav' file of a sound sample and return a list of amplitudes for the sounds in that file. In order to maintain a standard tone, timbre and quality of sounds, we decided to source the samples from a [UCLA course repository](http://www.phonetics.ucla.edu/course/chapter1/chapter1.html). All the files shown below are for the phoneme 'a' (like the 'a' in 'father').

- The data was obtained as a ['.aif'](https://github.com/fyt-o/sonotype/blob/master/Vow-24a.AIFF) file. 
- Using [Audacity](https://www.audacityteam.org/download/?__cf_chl_jschl_tk__=bff77f5cba16856809ff05fe05cea3986a8d3a04-1588786288-0-ARIEOmFzua8lt0z7LxIb9nEGRfFBHLz1J73Fto0Yzxd4FsaHe7v06XM9yX0JQOtomTiFSox_jZoXkAXzA3Xz3LPs-M9vXKBde1nN9EF1sNG8GVnI32X-VkrjZc1L2dlJz0akjeBTcZH4tAiEOmtKmDGGTqxOLUIAguSYA6oOpMDjdaBqQ8qW8KDq8134E-nnYpWwaCJ2UY3O4UTnT4SGKqfAiWfivz4N-lNsLuLNUKIsf_FdjALqnpGf1fUV74Ej4_W7d29QZ53WL2tp774CuSJv8BOt9TXfGnLsYjG7deFuvSmmyeE_4YOJ6B9MUvDdbwitJqQSu9G5euh-wdqk77PaS5zH4InxrU-Eenuxyifz) this file was converted to a '.wav' file. 
- Following which wav2c helped us obtain a C++ Header [file](https://github.com/fyt-o/sonotype/blob/master/a.h) with a list of amplitudes
- Finally, this file was taken into a text editor ([Sublime](https://www.sublimetext.com) in this case) and converted to a ['.txt'](https://github.com/fyt-o/sonotype/blob/master/a.txt) file after removing everything except for the amplitude values.

-----

### Initial Doodling

We started out by using [Processing](https://processing.org) to develop a simple way of making sense of sound. In order to do this, we wrote a simple 'sketch' that used Processing's [sound library](https://processing.org/reference/libraries/sound/index.html) to analyse the amplitudinal variations in a sound sample and also use a [Fast Fourier Transform](https://youtu.be/spUNpyF58BY) (FFT) algorithm to visualise the sample as a series of spectral frequencies. While Processing and FFT's did not feature in the subsequent direction for this piece, it was elemental in directing my understanding of how sound can be seen, understood and abstracted.   

Here is the [sketch](https://github.com/fyt-o/sonotype/blob/master/Sonotype.pde)

And here are some sample outputs from the Processing sketch


![Sample1](https://github.com/fyt-o/sonotype/blob/master/character-21903.png)


![Sample2](https://github.com/fyt-o/sonotype/blob/master/character-21907.png)


![Sample3](https://github.com/fyt-o/sonotype/blob/master/character-21908.png)


![Sample4](https://github.com/fyt-o/sonotype/blob/master/character-21915.png)


![Sample5](https://github.com/fyt-o/sonotype/blob/master/character-21919.png)


-----

### Form follows Data 

Using [Grasshopper](https://www.grasshopper3d.com) to realise the forms for this piece was a simple decision once we had the data in numerical form. 

We had a few options when it came to translating this data into forms. However, certain specific ideas had to be considered before I decided on a series of forms. 
- Firstly, In order for this to be a typeface that could actually be used, the forms had abstraction so as to be recognisable, replicable and legible
- Secondly, the forms should lend themsleves to three-dimensional fabrication. This was essential to develop a discourse around inclusivity in language teaching. Certain people respond to the kinesthetic stimulus of form and we wanted to make sure that there was a way tom engage this typeface beyond the audio-visual experience.
- Finally, we wanted to leave traces of representing sound as a wave in the typeform. This was to both show where the typeforms came from but also to visually associate the phonetic sound with a form.

##### Exploration 1

Keeping these thoughts in mind, we first tried to use a [pleating definition](https://github.com/zachpino/generative-design-workshop-s20/blob/master/week10/pleat-definition.gh) in Grasshopper to visualise the amplitudes as a long strip of paper that would be folded into a pleated accordian of sorts.

![pleats1](https://github.com/fyt-o/sonotype/blob/master/II.png)

While this afforded very easy fabrication and resemblance to soundwaves, it was neither reflective of expression in the sound nor was it immediately recognisable (the nuances that differentiate one pleated form from the other is in each individual fold).

##### Exploration 2

The next exploration involved using the data to firstly generate a representation of the phoneme amplitudes as a 'soundwave' that we could manipulate for filtering out 'noise' (repetitive values). Following this, we experimented weith different ways in which the wave could be abstracted, sculpted or simplified to create a family of forms that were similar enough but also unique. The grasshopper definition for this is available [here](https://github.com/fyt-o/sonotype/blob/master/sound-blobs.gh). 


> Series I


The first series of forms we created were for the purposes of a reproducible typeface that could actually function. The outputs of that both as three-dimensional renders and as a two-dimensional series of characters are shown below.

![A-render](https://github.com/fyt-o/sonotype/blob/master/D045433A-BF95-4A49-B4CB-5EFC38CA1DDA.JPG)

![R-render](https://github.com/fyt-o/sonotype/blob/master/E5DF6434-E21F-4DCB-B9C0-E0A4F8A82852.JPG)

![Sample Sheet](https://github.com/fyt-o/sonotype/blob/master/SampleSheetSonotype.png)


> Series II


The second series was created to explore forms that were more expressive. Here are some renderings for two different sound samples for the same phonetic sound. These samples differed from one another in the way they were sonically expressed.

![Sound Globe I](https://github.com/fyt-o/sonotype/blob/master/alphabetglobes.png)

![Sound Globe II](https://github.com/fyt-o/sonotype/blob/master/aii%20v1.png)


### What's Next?

Currently, working on developing the forms from Series I into a complete repertoire of typeforms that can be employed for the purposes of visual communication using [Glyphs](https://glyphsapp.com) while also trying to identify the most interesting experience for scribing in this typeface.

Some other questions we may begin to ask:

- Would we start to adopt sounds from other languages as we now have a way to represent these sounds in recognisable ways?
- Is this a typeface? A writing system? An expression of language as we see and hear it?
- What other applications can we find for these forms? Jewelry? Sculpture?

Will keep updating this with more questions and assets as we begin to develop them.

