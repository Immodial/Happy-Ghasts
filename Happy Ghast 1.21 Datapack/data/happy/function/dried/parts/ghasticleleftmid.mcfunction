## >> From: happy:dried/loop
## >> At: Any dried ghast cow base
## >> As: Any dried ghast cow base
## >> Does: Possibly replace dried ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGDriedGhasticleLeftMid] run return fail
summon item_display ~ ~ ~ {Tags:["HGDriedGhastDisplay","HGFloorGhasticle","HGLeftGhasticle","HGDriedGhasticleLeftMid","HGDriedGhastFormatting"],item:{id:"stone",components:{item_model:"happy:dried_ghasticle"}},teleport_duration:2,interpolation_duration:20}
ride @n[tag=HGDriedGhastFormatting] mount @s
data modify entity @n[tag=HGDriedGhastFormatting] transformation.translation set value [0.2d,-0.099d,-0.1d]
data modify entity @n[tag=HGDriedGhastFormatting] transformation.scale set value [1.2d,1.2d,1.2d]
scoreboard players add @n[tag=HGDriedGhastFormatting] HGGhasticleTime 3
tag @e remove HGDriedGhastFormatting