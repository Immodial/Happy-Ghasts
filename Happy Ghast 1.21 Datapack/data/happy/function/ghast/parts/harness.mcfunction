## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhastHarness] run return fail
summon item_display ~ ~ ~ {Tags:["HGHappyGhastDisplay","HGHappyGhastHarness","HGHappyGhastFormatting"],item:{id:"stone",components:{item_model:"happy:blue_harness"}},teleport_duration:2}
ride @n[tag=HGHappyGhastFormatting] mount @s
data modify entity @n[tag=HGHappyGhastFormatting] transformation.translation set value [0d,1.2d,0d]
data modify entity @n[tag=HGHappyGhastFormatting] transformation.scale set value [3.5d,3.5d,3.5d]
tag @e remove HGHappyGhastFormatting