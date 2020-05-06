# Sonotype

An exploration towards using the way we speak to create type forms that are generative towards a universal, inclusive and expressive communication.

----

### Introduction - Premise and Questions

Chances are that we learnt to communicate with each other using our bodies before we began to communicate using abstract representations, shapes and pictures. Text is probably a method by which we could standardise certain aspects of our communication. How much of our communication through the medium of sound and body is still captured in our textual communications? Why has letterform been created in different languages in the way it has? What could inform our typeforms towards diverse comprehensibility, legibility and expression? 

As I mulled over these questions, my preoccupation with sound and developing an understanding around sound being a distortion of a space-time paradigm began to inspire me towards using our sonic impressions to generate a family of forms.  My initial impetus to use sound is twofold. 
- Having had my own struggles with understanding and reading type early in life and then subsequently working with young children who struggle with language in a similar way, I was interested in contributing to the development of a typeface that could create a more tangible association between the sounds that we use to communicate and the forms we use to represent the sounds.
- A language, in its spoken form, is characterised by the repertoire of sounds that one can use within that language. These sounds are not just for communicative purposes but are carriers of expression in and of themselves. By using sound, I was keen to translate some of that character and expression into the typeface that is created

-----

### Data - Decisions and Sources

In order to gather the data that I needed, I first had to understand the construction of language. I took inspiration from a variety of languages to understand the ways in which they approach communication auditorily, expressively and visually. Hebrew, Arabic, Latin, Greek, Tamil, Pali, Korean, Tsalagi and Xhosa were amongst the languages that I engaged with. Once I had developed an understanding of the range of options from which a writing system could be constructed, I decided to introduce certain observations of elementary linguistic pedagogy such as focusing on phonetics as a fundamental way to understand the construction of words. 

I began to record my own sound samples for a variety of phonetic sounds and began to understand how they changed either in their amplitudes, frequencies or in their duration. It was then that my advisor [Zach Pino](https://github.com/zachpino), pointed me towards a program called [wav2c](https://github.com/olleolleolle/wav2c) that would accept a '.wav' file of a sound sample and return a list of amplitudes for the sounds in that file. In order to maintain a standard tone, timbre and quality of sounds, I decided to source the samples from a [UCLA course repository](http://www.phonetics.ucla.edu/course/chapter1/chapter1.html).

-----

### Initial Doodling

I started out by using [Processing](https://processing.org) to develop a simple way of making sense of sound. In order to do this, I wrote a simple 'sketch' that used Processing's [sound library](https://processing.org/reference/libraries/sound/index.html) to analyse the amplitudinal variations in a sound sample and also use a [Fast Fourier Transform](https://youtu.be/spUNpyF58BY) (FFT) algorithm to visualise the sample as a series of spectral frequencies. While Processing and FFT's did not feature in the subsequent direction for this piece, it was elemental in directing my understanding of how sound can be seen, understood and abstracted.   

Here is the [sketch](https://github.com/fyt-o/sonotype/blob/master/Sonotype.pde)

And here are some sample outputs from the Processing sketch

![Sample1](https://github.com/fyt-o/sonotype/blob/master/character-21903.png)

![Sample2](https://github.com/fyt-o/sonotype/blob/master/character-21907.png)

![Sample3](https://github.com/fyt-o/sonotype/blob/master/character-21908.png)

![Sample4](https://github.com/fyt-o/sonotype/blob/master/character-21915.png)

![Sample5](https://github.com/fyt-o/sonotype/blob/master/character-21918.png)

-----

### Form follows Data 

Using [Grasshopper](https://www.grasshopper3d.com) to realise the forms for this piece was a simple decision once I had the data in numerical form. 

I had a few options when it came to translating this data into forms. However, certain specific ideas had to be considered before I decided on a series of forms. 
- Firstly, In order for this to be a typeface that could actually be used, the forms had abstraction so as to be recognisable, replicable and legible
- Secondly, the forms should lend themsleves to three-dimensional fabrication. This was essential to develop a discourse around inclusivity in language teaching. Certain people respond to the kinesthetic stimulus of form and I wanted to make sure that there was a way tom engage this typeface beyond the audio-visual experience.
- Finally, I wanted to leave traces of representing sound as a wave in the typeform. This was to both show where the typeforms came from but also to visually associate the phonetic sound with a form.

##### Exploration 1

Keeping these thoughts in mind, I first tried to use a [pleating definition](https://github.com/zachpino/generative-design-workshop-s20/blob/master/week10/pleat-definition.gh) in Grasshopper to visualise the amplitudes as a long strip of paper that would be folded into a pleated accordian of sorts.

![pleats1](https://github.com/fyt-o/sonotype/blob/master/II.png)

While this afforded very easy fabrication and resemblance to soundwaves, it was neither reflective of expression in the sound nor was it immediately recognisable (the nuances that differentiate one pleated form from the other is in each individual fold).

##### Exploration 2

The next exploration involved using the data to firstly generate a representation of the phoneme amplitudes as a 'soundwave' that we could manipulate for filtering out 'noise' (repetitive values). 


