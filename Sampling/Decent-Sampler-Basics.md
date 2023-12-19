# Introduction

DecentSampler is a free multi-platform plugin and standalone piece of software that allows you to create sample-based instruments. It requires some effort to get things going, but once you've got the hang of it you can 
create nice self-contained sample libraries that are preferable to SoundFonts.

While the documentation is extensive, it can still be daunting to create something - especially if you've never written code. This guide is intended for that audience.

## How to start

The first part of the work consists of preparing the samples themselves. For this, we can use [Audacity](https://www.audacityteam.org/).

If we open the recording in Audacity, it may look like this:

![A recording of a Minimoog sound, note by note, in Audacity](images/all_notes.png)

Each of the 44 notes of the Minimoog were recorded and held for a few seconds to capture the full sound. Since the Minimoog is monaural, this was a monaural sample.
