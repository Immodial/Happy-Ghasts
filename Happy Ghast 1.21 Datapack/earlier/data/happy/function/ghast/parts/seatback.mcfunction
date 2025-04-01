## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute as @e[tag=HGHappyGhastSeatBack] if function happy:ghast/hasthisattachment run return fail
summon item_display ~ ~ ~ {Tags:["HGHappyGhastSeat","HGHappyGhastSeatBack","HGHappyGhastFormatting"],teleport_duration:3,Passengers:[{id:"marker",Tags:["HGHappyGhastSeatData","HGHappyGhastFormatting"]}]}
data modify entity @n[tag=HGHappyGhastSeatData,tag=HGHappyGhastFormatting] data.HappyGhastAttached set from entity @s UUID
tag @e remove HGHappyGhastFormatting