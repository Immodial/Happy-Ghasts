## >> From: happy:init, happy:tick
## >> At: None
## >> As: Server
## >> Does: Update happy ghasts
## >> Input: None
# Reschedule
schedule function happy:tick 1
# Spawn dried ghasts
execute as @e[type=skeleton,tag=!HGDrySpawnChecked] at @s unless entity @e[type=cow,tag=HGDriedGhast,distance=..110] if biome ~ ~ ~ soul_sand_valley run function happy:dried/spawn
tag @e[type=skeleton] add HGDrySpawnChecked
# Dried ghasts
execute as @e[type=cow,tag=HGDriedGhast] at @s run function happy:dried/loop
execute as @e[type=item_display,tag=HGDriedGhastDisplay] unless function happy:dried/exists run kill @s
execute as @e[type=item_display,tag=HGFloorGhasticle] run function happy:dried/ghasticle
# Ghastlings
execute as @e[type=parrot,tag=HGGhastling] at @s run function happy:ghastling/loop
execute as @e[type=item_display,tag=HGGhastlingDisplay] unless function happy:ghastling/exists run kill @s
# Happy ghasts
execute as @e[type=parrot,tag=HGHappyGhast] at @s run function happy:ghast/loop
execute as @e[type=item_display,tag=HGHappyGhastDisplay] unless function happy:ghast/exists run kill @s
execute as @e[type=shulker,tag=HGHappyGhastHitbox] unless function happy:ghast/exists run kill @s
execute as @e[type=interaction,tag=HGHappyGhastSeat] run function happy:ghast/mount
execute as @e[type=item_display,tag=HGGhasticle] run function happy:ghast/ghasticle