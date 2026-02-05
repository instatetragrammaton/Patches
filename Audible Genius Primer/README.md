# Where to download

https://www.syntorial.com/primer/

# About

Primer is the plugin version of the synth used in [Syntorial](https://syntorial.com/) (Audible Genius’s award-winning synthesizer training course). Despite its educational focus, it is a professional-quality instrument with a clean, intuitive interface that avoids overwhelming users while still offering deep sound design capabilities.

[Audible Genius](https://audiblegenius.com/) makes award-winning, interactive music courses for digital musicians. **Syntorial** teaches subtractive synthesis by ear through 190+ lessons with a built-in synth. **Primer** is that same synth as a VST/VST3/AU plugin (and standalone), so you can use it in your DAW and load the same presets you use in the course.

Primer is a subtractive synth aimed at learning but capable of a wide range of sounds: three oscillators (two main + sub), saw/pulse/triangle/sine, low/band/high-pass filter, filter and amp ADSR plus mod AD, LFO, and effects (distortion, chorus, phaser, delay, reverb). It includes unison, ring modulation, oscillator sync, a visualizer, and a randomizer. Presets use the `.primer` file extension.

# How to download presets

Primer patches use the `.primer` extension. On GitHub they may be shown as generic files. To download individual patches, use the "Download raw" button shown here:

![Download raw file](images/download_raw.png)

# How to install presets

In Primer, use the **Load** button (folder icon) and point it at the `.primer` file you downloaded. To have presets appear in the browser, copy the `.primer` files into Primer’s preset folder. You can find that folder from Primer’s save button.

On **Windows**, the preset folder is often `C:\Users\{userName}\Documents\Primer\Presets\User Presets`. Reload the plugin in your DAW so new presets show up.

On **macOS**, check the folder opened by Primer's save button (commonly under your user folder or in Application Support).

# My patch doesn’t work!

Primer presets are forward-compatible. If you encounter issues:

- Update to the latest version of Primer from the [download page](https://www.syntorial.com/primer/)
- Check that the preset file is complete and not truncated during download

Open the `.primer` file with a text editor like Windows Notepad, macOS TextEdit, or [VS Code](https://code.visualstudio.com). You'll notice that it is an XML file that starts with:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Syntorial compatibleWith="syntorial, primer" version="2" ...>
```
