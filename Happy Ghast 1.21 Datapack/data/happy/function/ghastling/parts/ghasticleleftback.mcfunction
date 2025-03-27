## >> From: happy:ghastling/loop/loop
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Possibly replace ghastling body
## >> Input: None
execute on passengers if entity @s[tag=HGGhastlingGhasticleLeftBack] run return fail
summon item_display ~ ~ ~ {Tags:["HGGhastlingDisplay","HGGhasticle","HGGhastlingGhasticleLeftBack","HGGhastlingFormatting"],item:{id:"stone",components:{item_model:"happy:ghasticle"}},teleport_duration:2,interpolation_duration:20}
ride @n[tag=HGGhastlingFormatting] mount @s
data modify entity @n[tag=HGGhastlingFormatting] transformation.translation set value [0.45d,-0.4d,-0.4d]
data modify entity @n[tag=HGGhastlingFormatting] transformation.scale set value [1.6d,1.6d,1.6d]
scoreboard players add @n[tag=HGGhastlingFormatting] HGGhasticleTime 13
tag @e remove HGGhastlingFormatting