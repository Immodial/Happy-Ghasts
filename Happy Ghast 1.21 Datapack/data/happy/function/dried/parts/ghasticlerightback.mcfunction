## >> From: happy:dried/loop
## >> At: Any dried ghast cow base
## >> As: Any dried ghast cow base
## >> Does: Possibly replace dried ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGDriedGhasticleRightBack] run return fail
summon item_display ~ ~ ~ {Tags:["HGDriedGhastDisplay","HGFloorGhasticle","HGRightGhasticle","HGDriedGhasticleRightBack","HGDriedGhastFormatting"],item:{id:"stone",components:{item_model:"happy:dried_ghasticle"}},teleport_duration:2,interpolation_duration:20}
ride @n[tag=HGDriedGhastFormatting] mount @s
data modify entity @n[tag=HGDriedGhastFormatting] transformation.translation set value [-0.1d,-0.099d,-0.2d]
data modify entity @n[tag=HGDriedGhastFormatting] transformation.scale set value [1.2d,1.2d,1.2d]
data modify entity @n[tag=HGDriedGhastFormatting] transformation.right_rotation set value [0f,-0.25f,0f,0.97f]
scoreboard players add @n[tag=HGDriedGhastFormatting] HGGhasticleTime 4
tag @e remove HGDriedGhastFormatting