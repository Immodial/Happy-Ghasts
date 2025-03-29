## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhastEquip] run return fail
summon interaction ~ ~ ~ {Tags:["HGHappyGhastEquip","HGHappyGhastFormatting"],width:2f,height:3.2f}
ride @n[tag=HGHappyGhastFormatting] mount @s
tag @e remove HGHappyGhastFormatting