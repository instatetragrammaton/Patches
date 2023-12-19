# Sampling basics

A sample is a digitized recording of a sound. This can be any sound - it doesn't have to be an instrument.

Samplers are devices that play back samples - often when you press a key, or tap a pad. Both keys and pads are the same thing for a sampler; both send MIDI note messages. There are no special MIDI messages that make pads different from keys. 
The main property of a sampler is that it can load waveforms that are supplied by the user (as opposed to being predefined by the manufacturer in read-only memory or ROM). These samples are then usually a substitute for the oscillators in a
subtractive synthesizer.

# Sampling types

This playback generally has two flavors: _phrase_ and _chromatic_.

With a phrase sampler, each sample generally occupies one single key. That means that you can play a completely different sound on each note, which is very suitable for drum kits. Since you only have to worry about a single key, programming such a sampler
tends to be pretty easy.

With a chromatic sampler, each sample generally occupies a span of keys (also called a zone or keyzone), and the sampler will play back the sample slower on lower keys (resulting in a lower pitch) and faster on higher keys (resulting in a higher pitch). 
Programming a sampler like this means carefully choosing the zones for the highest fidelity. 

Additionally, these zones may support velocity switching: i.e. the sample is only audible on that particular key if the note is played at a certain velocity. This lets you stack several samples on top of each other on the same key.
However, since only one is played at a time, this does not affect polyphony.

Additionally, these zones may support crossfading: i.e. the zone starts at C0 and ends at C3, but the sample's volume may gradually increase from C0 to C1 and gradually decrease from C2 o C3.

Since he number of keyzones tends to be limited, for older samplers this means that you can for instance only load (for instance) 8 different samples over the entire 5-octave range of a keyboard. 
This can be used to mimic phrase sampler behavior - each zone can span only a single key.

# Effects of changing playback speed

WHen a sample is played back at twice the speed it was recorded at, the pitch will be one octave higher. When a sample is played back at half the speed it was recorded at, the pitch will be one octave lower.

Faster playback is also called "pitching up" (and slower playback "pitching down"); both can also be referred to generally as "transposing". 

As a result, the duration of a sample will also be half as long (in case of playing back at twice the speed) or twice as long (in case of playing back at half the speed).

Besides pitch and duration, the timbre changes as well. For human voices, the formants shift; higher pitches sound more feminine, lower pitches sound more masculine. For instruments, lower notes are duller (since they lack high frequency content) and 
higher notes are brighter (since they have a surplus of high frequency content). Since this affects the suspension of disbelief - _"this doesn't sound like a real piano, but more like a banjo!"_ realism in sampling takes some effort.

# Realism

Lack of realism in sampling is usually caused by technological limitations. A lack of memory means that a single note has to be spread out over the full range of the keyboard.

As an example we can take the act of sampling a piano.

## Pitch

The naive way requires a single sample of the key in the middle of a piano. When this is sampled by a chromatic sampler, it means that it needs to be transposed 43 keys up and 44 down (since a piano has 88 keys). 44 keys is nearly a 4-octave range.
Transposing 4 octaves up means playing back the sound at 16 times the original speed (since every octave higher requires the speed to be doubled). This means that the duration of that sound is 1/16th.

If we sample every octave of a piano, it means that a sample only has to be transposed 6 notes up and 6 notes down at most. While this is still audible - especially when you switch from the highest transposition of the previous note to 
the lowest transposition of the next - it is already much more acceptable.

## Velocity

Thus, the most realistic way to sample a piano is to sample every single note. However, this is not all; the timbre of a note changes when a note is played with a lower velocity.

The reason "velocity" is used instead of "force" is because the hammer of a piano is moving faster when a key is pressed down faster. The speed is what matters - not the force.

So, by sampling several velocity variations - let's say 12 per key - the piano sound is much more realistic again.

## Repetition

When the same note is played repeatedly, the samples overlap. This can sometimes sound mechanical and unpleasant; since it's effectively a kind of comb filter. This is often referred to as the "machinegun effect"
To mitigate this, a single note at a single velocity is sampled multiple times to capture minute variations in timbre.

The end result is that a realistic modern piano library may take up several gigabytes of space; more if the same note is captured with different microphone positions.
