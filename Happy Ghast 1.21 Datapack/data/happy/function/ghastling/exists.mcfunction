## >> From: happy:tick
## >> At: None
## >> As: Any ghastling display
## >> Does: Check for ghast
## >> Input: None
execute on vehicle if data entity @s[tag=HGGhastling,tag=!HGDying] {DeathTime:2s} at @s run playsound happy:entity.ghastling.death neutral @a ~ ~ ~ 1.5 1
execute on vehicle if data entity @s[tag=HGGhastling] {DeathTime:2s} at @s run tag @s add HGDying
execute on vehicle if entity @s[tag=HGGhastling] run return 1
return fail