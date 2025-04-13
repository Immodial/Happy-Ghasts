## >> From: happy:tick
## >> At: None
## >> As: Any happy ghast display
## >> Does: Check for ghast
## >> Input: None
execute on vehicle if data entity @s[tag=HGHappyGhast,tag=!HGDying] {DeathTime:2s} at @s run playsound happy:entity.happy_ghast.death neutral @a ~ ~ ~ 1.2 1
execute on vehicle if data entity @s[tag=HGHappyGhast] {DeathTime:2s} at @s run tag @s add HGDying
execute on vehicle if entity @s[tag=HGHappyGhast] run return 1
return fail