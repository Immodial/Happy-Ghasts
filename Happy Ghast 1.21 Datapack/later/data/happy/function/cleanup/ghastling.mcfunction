## >> From: happy:tick
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Update
## >> Input: None
say Ghastling Updating
summon happy_ghast ~ ~ ~ {Tags:["HGGhastlingUpdating"]}
execute store result entity @n[tag=HGGhastlingUpdating] Age int -1 run scoreboard players get @s HGGrowthTime
tag @e remove HGGhastlingUpdating
kill @s