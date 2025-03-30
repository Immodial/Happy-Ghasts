## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhasticleLeftMid] run return fail
summon item_display ~ ~ ~ {Tags:["HGHappyGhastDisplay","HGGhasticle","HGHappyGhasticleLeftMid","HGHappyGhastFormatting"],item:{id:"stone",components:{item_model:"happy:big_ghasticle"}},teleport_duration:2,interpolation_duration:20}
ride @n[tag=HGHappyGhastFormatting] mount @s
data modify entity @n[tag=HGHappyGhastFormatting] transformation.translation set value [1.05d,-0.4d,0d]
data modify entity @n[tag=HGHappyGhastFormatting] transformation.scale set value [3.5d,3.5d,3.5d]
scoreboard players add @n[tag=HGHappyGhastFormatting] HGGhasticleTime 23
tag @e remove HGHappyGhastFormatting