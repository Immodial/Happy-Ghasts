## >> From: happy:ghast/parts/loop, happy:ghast/parts/seatfront
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast seat
## >> Does: Check for ghast
## >> Input: None
summon snowball ~ -1000 ~ {Tags:["HGHappyGhastFinder"]}
execute on passengers if entity @s[type=marker] run data modify entity @n[type=snowball,tag=HGHappyGhastFinder] Owner set from entity @s data.HappyGhastAttached
execute as @n[type=snowball,tag=HGHappyGhastFinder] on origin run tag @s add HGHappyGhastFound
kill @e[type=snowball,tag=HGHappyGhastFinder]
execute as @e[type=parrot,tag=HGHappyGhastSeated,tag=HGHappyGhastFound] run return run tag @s remove HGHappyGhastFound
tag @e remove HGHappyGhastFound
return fail