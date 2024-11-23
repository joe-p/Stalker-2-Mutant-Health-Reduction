# Mutant Health Reduction

This S.T.A.L.K.E.R. 2 mod makes mutants easier to kill by reducing their health pools and/or strike protection.

Currently only affects bloodsuckers. As I encounter more mutants in the game I will adjust accordingly. Most of the balancing I do will be based on buckshot damage since that historically has been the best way to deal with mutants in past games. PRs are also welcome.

## Changes

### Bloodsucker

* Strike protection reduced from 3 to 1
* Max health reduced from 500 to 300

Takes roughly 3-4 12x70 buckshots close range to kill.

## Using Custom Values

To set your own values, edit the file for the respective mutant under [mutant_health_reduction\Stalker2\Content\GameLite\GameData\ObjPrototypes](mutant_health_reduction\Stalker2\Content\GameLite\GameData\ObjPrototypes). Health is defined in `VitalParams.MaxHP` and strike protection is defined in `Protection.Strike`.

### Building

In order to build the mod, you need to have [repak](https://github.com/trumank/repak).

Once you have repack, edit [pack.bat](pack.bat) and set `PATH_TO_REPAK` to the path of your repak.exe and `PATH_TO_MODS` to the path of the `~mods` folder inside your S.T.A.L.K.E.R. 2 installation folder.

To pack the mod and place it in your `~mods` folder, run [./pack.bat](pack.bat).
