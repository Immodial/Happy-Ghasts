## >> From: happy:dried/loop
## >> At: Any dried ghast cow base
## >> As: Any dried ghast cow base
## >> Does: Possibly replace dried ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGDriedGhastBody] run return fail
summon item_display ~ ~ ~ {Tags:["HGDriedGhastDisplay","HGDriedGhastBody","HGDriedGhastFormatting"],item:{id:"stone",components:{item_model:"happy:dried_ghast"}},teleport_duration:2}
ride @n[tag=HGDriedGhastFormatting] mount @s
data modify entity @n[tag=HGDriedGhastFormatting] transformation.translation set value [0d,-0.1d,0d]
data modify entity @n[tag=HGDriedGhastFormatting] transformation.scale set value [1.2d,1.2d,1.2d]
tag @e remove HGDriedGhastFormatting