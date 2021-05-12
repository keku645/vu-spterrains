# vu-spterrains
**WORK IN PROGRESS**
Modification for Battlefield 3 (using the Venice Unleashed framework) allowing singleplayer and co-op maps to be played in multiplayer with a universal solution.

In your server MapList, load the level like any other with any gamemode. The options are below:

```
coop_002         -    Hit and Run
coop_003         -    Drop 'Em Like Liquid
coop_006         -    Fire from the Sky
coop_007         -    Operation Exodus
coop_009         -    Exfiltration
coop_010         -    The Eleventh Hour
sp_bank          -    Operation Guillotine
sp_earthquake    -    Operation Swordbreaker
sp_earthquake2   -    Uprising
sp_finale        -    The Great Destroyer
sp_jet           -    Going Hunting
sp_new_york      -    Semper Fidelis
sp_paris         -    Comrades
sp_sniper        -    Night Shift
sp_tank          -    Thunder Run
sp_tank_b        -    Fear No Evil
sp_valley        -    Rock and a Hard Place
sp_villa         -    Kaffarov
```

**NOTE**: Some quirk of Frostbite or something means that this mod can't load Thunder Run (sp_tank) if Fear No Evil (sp_tank_b) is allowed to load in MP - the server loads Fear No Evil every time you put 'sp_tank' in the server MapList. A dirty fix has been implemented: *if you wish to play Fear No Evil, change line 8 in `vu-spterrains/ext/Shared/__init__.lua` to 'true'*.

## Gamemodes - Default

By default, load Team Deathmatch CQ (`TeamDeathMatchC0`) to explore. Spawns are high above the map, allowing you to parachute down and explore/find coordinates, etc.

**NOTE: In this current version, after loading you must use the console command `vu-spterrains.spawn` to force a spawn, and you *cannot fire your weapon*. Sounds on many maps are also broken at the moment - if you want them, use any commit before 20th April (initial MP implementation).**

## Gamemodes - Freecam

To use a freecam to look around, load any gamemode other than `TeamDeathMatchC0`. If the map has a custom layout (see below), don't load that gamemode either.

## Gamemodes - Custom Layouts

Some maps have custom layouts, making them playable for more than just exploration.

| Level                      | Gamemode (as in MapList) | Description                                                                                                          |
| -------------------------- | ------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| Thunder Run `SP_Tank`      | `ConquestLarge0`         | Follows (mostly) the mission, starting in the desert and running towards Teheran. Probably biggest CQL map in BF.    |

More custom layouts will be made in the future.

## Other issues

Many SP levels have issues with certain parts of the map (WorldPart instances, in particular), causing the server to crash. For this reason, these have been excluded. The list of approved WorldParts - including ones which should be approved, but are excluded for their problems - can be seen and edited at `vu-spterrains/ext/Shared/SpLevelApprovedWorldPartList.lua`. Operation Swordbreaker (SP_Earthquake) is a level which is particularly hurt by this. It seems like it could be a small no. of props/assets creating this issue, so at some point I will try and fix it.

## (For map makers) Excluding SubWorlds

If you are making a map with this mod, you might want to remove whole parts of the level. To do so, see the instructions in `vu-spterrains/ext/Shared/SpLevelExcludedSubWorldList.lua`.

##

If you have any further questions, or have found something I might want to fix/add, chat to me on Discord as @SassythSasqutch#9081. Thanks.
