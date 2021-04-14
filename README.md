# vu-spterrains
Modification for Battlefield 3 (using the Venice Unleashed framework) allowing singleplayer and co-op maps to be played in multiplayer using a universal solution.

For loading different levels, you have to change the first line in `vu-spterrains/ext/Shared/__init__.lua` to load the map you want to load. In your server MapList, load the level like any other. The options are below:

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

By default, the spawns are set to high above the map, allowing you to parachute down and explore/find coordinates, etc. Conquest Large layouts have been made for Thunder Run (SP_Tank).

Many SP levels have issues with certain parts of the map, causing the server to crash. For this reason, these have been excluded. The list of approved WorldParts - including ones which should be approved, but are excluded for their problems - can be seen and edited at `vu-spterrains/ext/Shared/SpLevelApprovedWorldPartList.lua`. Operation Swordbreaker (SP_Earthquake) is a level which is particularly hurt by this. It seems like it could be a small no. of props/assets creating this issue, so at some point I will try and fix it.