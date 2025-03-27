## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhastSeat] run return fail
summon interaction ~ ~ ~ {Tags:["HGHappyGhastSeat","HGHappyGhastFormatting"],width:2f,height:0.2f,response:true}
ride @n[tag=HGHappyGhastFormatting] mount @s
tag @e remove HGHappyGhastFormatting