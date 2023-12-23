# Digital Signal Processing

An oft-heard claim is that personal computers are not as good for audio as dedicated processors such as DSPs.

There are two components to this:

- computers are general purpose - so not specialized for audio
- computers have to do a lot more that doesn't have anything to do with audio

Fortunately, neither of these matters.

# The Factory Analogy

Imagine a factory that makes widgets. Each day at midnight, a truck stops at the factory, and it has to be loaded with widgets. This loading happens in a single second. There is only one rule: the truck must be filled completely.

This is analogous to how the audio buffer works in any digital synthesizer. There's limited storage in there, and it has to be filled just in time to output the next set of samples.

If this buffer is not filled in time, two things can happen:

- the buffer resets to zero. This can be heard as crackling - audio data is missing so there are brief silences.
- the buffer does not refresh the previous data. This can be heard as a high-pitched beep; the pitch of this beep depends on your buffer size. For instance, for a 256 sample buffer and a sample rate of 44100 Hz, the tone's fundamental pitch would be 172 Hz
(and it would be likely be perceived as higher than that, since the data would not be a neat sine wave, but there'd be overtones)

Both are considered glitches; undesirable artifacts.

It does however not matter in our example whether the factory workers work from midnight to 5 minutes before the next midnight, or whether they work 5 minutes and then take the rest of the day off. The truck only arrives at midnight and takes negligible time to be filled.
Having enough widgets ready to fill dozens of trucks does not matter; there is only one truck.

Sure - this still means that a dedicated device can be faster; but because it's also clear that there's no difference between working all the time or only a fraction thereof, you can choose a weaker DSP that runs at a higher efficiency. 
A device that has a lower efficiency requires it to be faster to do the same amount of work in the same time. Fortunately, general purpose processors are really fast; the Motorola in an [Access Virus](https://dsp56300.wordpress.com/virus-c-technical-information/) runs at for instance 100 MHz, 
but your 8-core i7 runs at a whopping 3 GHz.

During the off-time that there's no truck to be filled, the processor can do whatever is needed. It can fetch email, draw graphics on a screen, or listen to mouse clicks. For a synthesizer with DSPs, this means usually scanning the controls (was a knob moved, a key pressed) or checking whether MIDI came in,
or something else, like updating a small 2 x 16 character display.

# The difference

The real difference that is worth paying for is the dedicated interface and the promise of stability. A DSP-based synth will just not let you play more than the number of voices that is advertised. A general purpose computer will happily melt down and run at 273% CPU usage if you ask it to.
