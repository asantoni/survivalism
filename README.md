# Survivalism
## A Multiplayer Survival Horror Mod for Doom 2
Runs on the [Zandronum](http://www.zandronum.com) engine and is mostly ZDoom/GZDoom compatible.


YouTube:

[![Survivalism r13 Trailer Video](http://img.youtube.com/vi/ZM7FsSJpVac/0.jpg)](http://www.youtube.com/watch?v=ZM7FsSJpVac)

## Features

- Day/night cycle
- Crafting system
- Dynamic monster spawner, works on any map
- Construction - Build a base to survive the night!
- Farming
- Leveling, XP, and unlockable craftables
- **Full Multiplayer Support** - Survive with your friends!
- Persistent server-side inventory and characters
- Procedural vegetation system
- Hunger system
- Quest system
- Giant bosses
- Low system requirements - It even runs on Android with Doom Touch.

This mod uses many third party art assets. Please see the [CREDITS](src/CREDITS) file for a full list of authors.

## Dependencies

- Windows

  [survivalism-tools](https://www.github.com/asantoni/survivalism-tools)

- Unix-like

  [ACC](http://www.github.com/rheit/acc)

  [P7ZIP](http://p7zip.sourceforge.net)

- All

  [Zandronum](https://bitbucket.org/Torr_Samaho/zandronum-stable)

  [DOOM II](https://github.com/dgeng/iwad)


## Download and Play

Clone dependencies into the following directory layout:
```
rheit/acc
asantoni/survivalism-tools
dgeng/iwad
Thorr_Samaho/zandronum-stable
asantoni/survivalism
```

- Windows

  Open a command prompt to the survivalism directory and run:

  `make`

  To compile and play it all at once, run:

  `play`

- Unix-like

  Compile ACC:

  `cd rheit/acc && make && cp acc /usr/bin`

  Compile Survivalism:

  `cd asantoni/survivalism && make -f Makefile.unix`

  Compile and Run Survivalism:

  `cd asantoni/survivalism && DOOMWADDIR=../../dgeng/iwad ./play`

Please note that OpenGL is required. You must turn on OpenGL in Zandronum.

A multiplayer server is usually running at 104.236.221.85:10667. If you download Zandronum and try to connect to this server with Doomseeker, the WAD will automatically download.

## Mapping

Please see the [Survivalism Mapping Notes](Surivalism%20Mapping%20Notes.txt) document. I recommend any recent build of [GZDoom Builder](http://devbuilds.drdteam.org/doombuilder2-gzdb/) as an editor. If you're new to Doom mapping, there's some quick [video tutorials on the Doom Builder website](http://doombuilder.com/index.php?p=tutorials) to help get you started.
