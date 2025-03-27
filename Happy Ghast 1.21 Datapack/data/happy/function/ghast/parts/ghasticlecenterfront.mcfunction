## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhasticleCenterFront] run return fail
summon item_display ~ ~ ~ {Tags:["HGHappyGhastDisplay","HGGhasticle","HGHappyGhasticleCenterFront","HGGhastlingFormatting"],item:{id:"stone",components:{item_model:"happy:big_ghasticle"}},teleport_duration:2,interpolation_duration:20}
ride @n[tag=HGGhastlingFormatting] mount @s
data modify entity @n[tag=HGGhastlingFormatting] transformation.translation set value [0.15d,-0.8d,1.2d]
data modify entity @n[tag=HGGhastlingFormatting] transformation.scale set value [3.5d,3.5d,3.5d]
scoreboard players add @n[tag=HGGhastlingFormatting] HGGhasticleTime 8
tag @e remove HGGhastlingFormatting