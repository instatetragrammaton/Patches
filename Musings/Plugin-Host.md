# Plugin Host

If you have a synthesizer and you want to hear the sound it makes - and it has no on-board speakers - you need to connect it to external speakers or headphones.

If you have two synthesizers and you want to hear them at the same time - and they have no on-board speakers - this gets a little more difficult. The solution is to connect both of them to a [mixer](Mixer.md) and then to connect that mixer to the speaker.

For software, this works a little bit in the same way. To get digital audio outside of the computer, you need an audio interface. The problem is that this interface doesn't really like it if multiple pieces of software want to use it.

# Printer

To explain why, imagine that you're working with [Excel](https://en.wikipedia.org/wiki/Microsoft_Excel) and [Word](https://en.wikipedia.org/wiki/Microsoft_Word). When you want to print a document, the software could've been set up in such a way that Excel would reserve the printer for itself so that it could print your spreadsheet.

The problem is when Word also wants to do this - and now you have two applications fighting over a resource. It'd be even worse if both pieces of software thought that the other had access to the printer while none of them have. This kind of problem is called the [Dining Philosophers problem](https://en.wikipedia.org/wiki/Dining_philosophers_problem) - how can limited resources (one audio interface) be shared in such a way that it works for everyone?

To solve this for printers, the operating system doesn't give access to the printer directly. If Word and Excel want to print, they submit a document to the print queue, which then dispatches it to the printer. This way, software doesn't have to fight over it, and the queue determines which goes first; since you can't print two documents at the same time (or well, you could, but that'd be pretty confusing).

# Plugins

For audio interfaces, the solution is also to give one application exclusive access; the host. Synthesizers are plugins; they're not allowed to send their audio to the audio interface but instead must send it to a host, which then sends it to the audio interface - and also takes care of mixing.

# Standalone plugins

If a plugin is offered in both plugin format and standalone version, what is really happening is that you're using the plugin - but it's wrapped in a thin host which acts as a layer around it. DAWs tend to be hosts, but hosts don't have to be DAWs; for Windows, there's [NanoHost](https://www.tone2.com/nanohost.html), for MacOS there's [Mainstage](https://www.apple.com/mainstage/).

These have less overhead than a full DAW and are usually specifically intended to turn a computer into an instrument. So, if there's no standalone version of a plugin - don't worry!

# Plugin formats

VST is just one format. Just like tissues aren't Kleenex and copying machines aren't Xerox, VSTs are plugins but plugins are not necessarily VSTs. VST defines how a plugin should communicate with a host, and what kind of data can be expected - audio, MIDI or both.

If there's anything audio software manufacturers seem to hate, it's a single standard. Logic uses AU (Audio Units). ProTools uses AAX (Avid Audio eXtension). Cubase uses VST, and recently CLAP (CLever Audio Plugin) was developed because having a company handle a monopoly on plugin formats in closed source isn't really beneficial.

A good plugin developer will have versions of each. Beware of plugins that are only in Windows VST format; it's usually not a good sign for future development (since these plugins tend to be made with SynthEdit).
