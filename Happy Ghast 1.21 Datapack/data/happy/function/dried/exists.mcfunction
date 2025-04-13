## >> From: happy:tick
## >> At: None
## >> As: Any ghastling display
## >> Does: Check for ghast
## >> Input: None
execute on vehicle if data entity @s[tag=HGDriedGhast,tag=!HGDying] {DeathTime:2s} at @s run playsound happy:entity.dried_ghast.death neutral @a ~ ~ ~ 0.8 1
execute on vehicle if data entity @s[tag=HGDriedGhast] {DeathTime:2s} at @s run tag @s add HGDying
execute on vehicle if entity @s[tag=HGDriedGhast] run return 1
return fail