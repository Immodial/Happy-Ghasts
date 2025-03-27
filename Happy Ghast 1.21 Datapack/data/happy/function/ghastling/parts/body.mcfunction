## >> From: happy:ghastling/loop/loop
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Possibly replace ghastling body
## >> Input: None
execute on passengers if entity @s[tag=HGGhastlingBody] run return fail
summon item_display ~ ~ ~ {Tags:["HGGhastlingDisplay","HGGhastlingBody","HGGhastlingFormatting"],item:{id:"stone",components:{item_model:"happy:ghastling"}},teleport_duration:2}
ride @n[tag=HGGhastlingFormatting] mount @s
data modify entity @n[tag=HGGhastlingFormatting] transformation.translation set value [0d,0.5d,0d]
data modify entity @n[tag=HGGhastlingFormatting] transformation.scale set value [1.6d,1.6d,1.6d]
tag @e remove HGGhastlingFormatting