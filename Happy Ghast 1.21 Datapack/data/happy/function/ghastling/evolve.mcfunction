## >> From: happy:ghastling/loop, happy:tick
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Change from Ghastling to Happy Ghast
## >> Input: None
tag @s remove HGGhastling
tag @s add HGHappyGhast
attribute @s flying_speed base set 2
attribute @s max_health base set 26
attribute @s scale base set 6.5
data modify entity @s Health set value 26
execute on passengers run kill @s[tag=HGGhastlingDisplay]