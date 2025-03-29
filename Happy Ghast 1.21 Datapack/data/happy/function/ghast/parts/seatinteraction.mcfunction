## >> From: happy:ghast/loop
## >> At: Any happy ghast seat
## >> As: Any happy ghast seat
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGSeatInteraction] run return fail
summon interaction ~ ~ ~ {Tags:["HGSeatInteraction","HGHappyGhastFormatting"],width:1f,height:0.2f,response:true}
ride @n[tag=HGHappyGhastFormatting] mount @s
tag @e remove HGHappyGhastFormatting