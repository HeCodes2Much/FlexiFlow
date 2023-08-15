<div align="center">
    <h1>FlexiFlow</h1>
    <p>Window manager for linux</p>
</div>

# Initial look

<img src="https://github.com/The-Repo-Club/FlexiFlow/blob/screenshots/screenshots/initial_look.png">
<img src="https://github.com/The-Repo-Club/FlexiFlow/blob/screenshots/screenshots/col_layout.png">

<img src="https://github.com/The-Repo-Club/FlexiFlow/blob/screenshots/screenshots/occ_act_tags.png">
(empty workspaces have their color greyed out)

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar.
  <img src="https://github.com/The-Repo-Club/FlexiFlow/blob/screenshots/screenshots/flexiflow.png">

# Requirements

- imlib2
- xsetroot package (status2d uses this to add colors on dwmbar)
- Make sure to setup your terminal's theme accordingly do FlexiFlow's theme such as nord, onedark etc...

## Other requirements

- picom
- feh
- acpi
- rofi

# Installation

**For Arch** it can be founded in [RepoClub Repository](https://arch.therepo.club/) \
**For Gentoo** refer to the [XDream's Repository](https://github.com/XDream8/dreamsrepo) \
**Recommended Method**

```sh
$ git clone https://github.com/The-Repo-Club/FlexiFlow.git
$ cd FlexiFlow
$ sudo make install
```

[Download latest release](https://github.com/The-Repo-Club/FlexiFlow/releases/)

# Features

This is just a quick list of some features. For a full list and explanation,
please refer to the documentation.

- General

  - hybrid-wm: tiling and floating mode
  - Keyboard and Mouse based workflows
  - start menu (rofi)
  - full multi monitor support
  - status2d color status
  - tag system
  - repobar script
  - indicators
  - shutdown menu (rofi)
  - system tray
  - window gaps
  - restart function

- Patches

  - barpadding
  - bottomstack
  - cfacts
  - dragmfact
  - dragcfact
  - fibonacii
  - gaplessgrid
  - horizgrid
  - movestack
  - vanity gaps
  - colorful tags
  - statuspadding
  - status2d
  - underline tags
  - notitle
  - preserveonrestart

# Change themes

- Bar : config.def.h (line 42)

# is this dwm?

FlexiFlow is a fork of [DWM](https://dwm.suckless.org) and can be used as a drop in replacement, maintaining all dmenu behavior and making all extra features optional
