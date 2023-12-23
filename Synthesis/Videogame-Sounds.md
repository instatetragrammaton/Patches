# Videogames

Sound in videogames can be provided by various means; these means are closely tied to the available technology at that time.

## Chiptunes

The Commodore 64 used a dedicate chip to generate the sound (the SID chip). For this you want to use a dedicated plugin such as [Plogue Chipsynth C64](https://plogue.com/products/chipsynth-c64.html). An excellent alternative is Impact Soundworks' [InSIDious](https://impactsoundworks.com/product/insidious/).

The NES has the CPU generating the sounds (2A03).

The Master System has a PSG that makes square wave beeps.

The difference between these is not only in technology - the C64 has arguably a richer palette with its PWM and ringmodulation - but also in style. The C64's demoscene did not have to care about the restrictions of games where audio could only be a small part of the code, resulting in short, looped songs 
(or no sound but background effects at all!) and thus has a rich tradition of longer works. The NES with its wider reach has more memorable and iconic songs.

All of these can be approximated to a certain degree with a synthesizer [such as Surge XT](https://www.reddit.com/r/synthrecipes/comments/fdx4vj/recipe_using_surge_for_8bit_videogame_sounds_long/).

For chips like this, there is no real difference between automation and modulation; data is written to the chip's memory which is then executed. So, whether you have a subroutine that lowers the volume or an envelope generator doesn't really matter.

## FM synthesis

Several arcade machines, the Sega Genesis and Neo-Geo used Yamaha's OPL chips for FM synthesis.

Besides [Plogue Chipsynth MD](https://www.plogue.com/products/chipsynth-md.html), all of the above can also be done with [Deflemask](https://www.deflemask.com/).

## Samples

The SNES and Amiga used (low-fidelity) samples and a limited number of channels to play these back. Making these sounds without the original hardware requires an emulator or a plugin.

For the Amiga the best option is an emulator or a platform such as MiSTeR. Since Amigas have software that let you author audio directly, you can just run something like ProTracker or similar software. The best way to get samples for it is to [download .MOD files](https://modarchive.org/) and save them from there.

For the SNES, there's [Plogue Chipsynth SFC](https://www.plogue.com/products/chipsynth-sfc.html).

## CD audio

Fortunately, a group of volunteers has assembled [a comprehensive list](https://docs.google.com/spreadsheets/d/1JJBlHHDc65fhZmKUGLrDTLCm6rfUU83-kbuD8Y0zU0o/edit#gid=1570468977) of spotted sounds for Playstation 1 games and beyond. Once you have CD audio, you don't really need a soundchip anymore. 
As you can see, a large part originates from early 00's sample CDs.
