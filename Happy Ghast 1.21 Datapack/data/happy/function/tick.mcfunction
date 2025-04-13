## >> From: happy:init, happy:tick
## >> At: None
## >> As: Server
## >> Does: Update happy ghasts
## >> Input: None
# Reschedule
schedule function happy:tick 1
# Spawn eggs
execute as @e[type=marker,tag=HGDriedGhastSpawn] at @s run function happy:dried/spawn
execute as @e[type=marker,tag=HGGhastlingSpawn] at @s run function happy:ghastling/spawn
execute as @e[type=marker,tag=HGHappyGhastSpawn] at @s unless function happy:ghastling/spawn as @n[tag=HGGhastling] run function happy:ghastling/evolve
kill @e[type=marker,tag=HGSpawnEgg]
# Spawn dried ghasts
execute as @e[type=skeleton,tag=!HGDrySpawnChecked] at @s unless entity @e[type=cow,tag=HGDriedGhast,distance=..110] if biome ~ ~ ~ soul_sand_valley run function happy:dried/spawn
tag @e[type=skeleton] add HGDrySpawnChecked
# Dried ghasts
execute as @e[type=cow,tag=HGDriedGhast] at @s run function happy:dried/loop
execute as @e[type=item_display,tag=HGDriedGhastDisplay] unless function happy:dried/exists run kill @s
execute as @e[type=item_display,tag=HGFloorGhasticle] run function happy:dried/ghasticle
# Ghastlings
execute as @e[type=parrot,tag=HGGhastling] at @s run function happy:ghastling/loop
execute as @e[type=!player,tag=HGGhastlingDisplay] unless function happy:ghastling/exists run kill @s
execute as @e[type=!player,tag=HGGhastlingDisplay] on vehicle if data entity @s {DeathTime:2s} at @s run playsound happy:entity.ghastling.death neutral @a ~ ~ ~ 1.2 1
# Happy ghasts
execute as @e[type=parrot,tag=HGHappyGhast] at @s if loaded ~ ~ ~ run function happy:ghast/loop
execute as @e[type=!player,tag=HGHappyGhastDisplay] unless function happy:ghast/exists run kill @s
execute as @e[type=item_display,tag=HGGhasticle] run function happy:ghast/ghasticle
execute as @e[type=item_display,tag=HGHappyGhastSeat] run function happy:ghast/seat
execute as @e[type=interaction,tag=HGSeatInteraction] unless function happy:ghast/seatexists run kill @s