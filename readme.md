## Sacrifices Must be Made

A Ludum Dare game by Quasar Jarosz and Joseph Utecht

Idea
====
Reverse hole in the wall/galaxy trucker.

You are _piloting_ a spaceship composed of component cubes through an astroid field.  As you move through your ship is too large to avoid collisions. You must rotate/translate your cube ship to pick which parts will get knocked off by astroids.

Prototype core gameplay of translate/rotate and having holes knocked through ship.

Possible expansions.
-------------------
Galaxy Trucker-esque ship upgrades


Scene Hierarchy
--------------
HyperSpace (spawns astroids, bounds ship)
--Ship (handles player input/movement of components)
----Component (listens for impacts)
--Astroid (shoots forward on instantiation)
