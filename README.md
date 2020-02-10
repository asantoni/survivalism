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

- Windowns

  [survivalism-tools](https://www.github.com/asantoni/survivalism-tools)

- Unix-like

  [ACC](http://www.github.com/rheit/acc)

- All

  [Zandronum](https://bitbucket.org/Torr_Samaho/zandronum-stable)

  [DOOM II](https://github.com/dgeng/iwad)


## Download and Play

Be sure to install dependencies:

Please note that OpenGL is required. You must turn on OpenGL in Zandronum.

A multiplayer server is usually running at 104.236.221.85:10667. If you download Zandronum and try to connect to this server with Doomseeker, the WAD will automatically download.

## Developing

1. Clone the [survivalism-tools](https://www.github.com/asantoni/survivalism-tools) repository beside your clone of this repository. For convenience, it includes all the binaries needed to compile this WAD.

2. Install [Zandronum](http://www.zandronum.com) and [grab a copy of doom2.wad](https://github.com/dgeng/iwad). 

3. On Windows, open a command prompt to the survivalism directory and run:

        make
    
    To compile and play it all at once, run:

        play
        
3. On Unix-like systems, open a terminal to the survivalism and run:

        make -f Makefile.unix
    
   To compile and play it all at once, run:

        DOOMWADDIR=<path to wad files> ./play
        

## Mapping

Please see the [Survivalism Mapping Notes](Surivalism%20Mapping%20Notes.txt) document. I recommend any recent build of [GZDoom Builder](http://devbuilds.drdteam.org/doombuilder2-gzdb/) as an editor. If you're new to Doom mapping, there's some quick [video tutorials on the Doom Builder website](http://doombuilder.com/index.php?p=tutorials) to help get you started.
