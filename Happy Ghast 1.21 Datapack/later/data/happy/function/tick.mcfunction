## >> From: happy:init, happy:tick
## >> At: None
## >> As: Server
## >> Does: Update happy ghasts
## >> Input: None
# Reschedule
schedule function happy:tick 1
# Cleanup
kill @e[type=marker,tag=HGSpawnEgg]
kill @e[type=!player,tag=HGDriedGhastDisplay]
kill @e[type=!player,tag=HGGhastlingDisplay]
kill @e[type=!player,tag=HGHappyGhastDisplay]
kill @e[type=item_display,tag=HGHappyGhastSeat]
kill @e[type=interaction,tag=HGSeatInteraction]
# Convert datapack entities and items into new ones
execute as @e[type=cow,tag=HGDriedGhast] at @s run function happy:cleanup/dried
execute as @e[type=parrot,tag=HGGhastling] at @s run function happy:cleanup/ghastling
execute as @e[type=parrot,tag=HGHappyGhast] at @s run function happy:cleanup/ghast
execute as @a run function happy:cleanup/items
# Remove tags
tag @a remove HGWasRiding
tag @a remove HGRiding
tag @e[type=skeleton] remove HGDrySpawnChecked