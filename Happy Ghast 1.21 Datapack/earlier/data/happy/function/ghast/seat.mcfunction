## >> From: happy:tick
## >> At: None
## >> As: Happy Ghast Seat Interaction being mounted
## >> Does: Mount player onto it
## >> Input: None
execute unless loaded ~ ~ ~ run kill @s
execute at @s run function happy:ghast/parts/seatinteraction
summon snowball ~ -1000 ~ {Tags:["HGHappyGhastFinder"]}
execute on passengers if entity @s[type=marker] run data modify entity @n[type=snowball,tag=HGHappyGhastFinder] Owner set from entity @s data.HappyGhastAttached
execute unless function happy:ghast/hasattachment run tag @s add HGDeleting
kill @e[type=snowball,tag=HGHappyGhastFinder]
execute if entity @s[tag=HGDeleting] run return run kill @s
tag @s add HGSeatMounting
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target run ride @s dismount
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target run ride @s mount @n[tag=HGSeatMounting]
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target at @s run playsound happy:entity.happy_ghast.ride player @a ~ ~ ~ 0.7 1
tag @s remove HGSeatMounting
execute on passengers run data remove entity @s[tag=HGSeatInteraction] interaction