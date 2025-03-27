## >> From: happy:tick
## >> At: Any dried ghast cow base
## >> As: Any dried ghast cow base
## >> Does: Update
## >> Input: None
# Play sounds
execute if predicate {condition:"random_chance",chance:0.005} run tag @s add HGNoiseMaking
execute if entity @s[tag=HGNoiseMaking] unless block ~ ~ ~ water run playsound entity.vex.death neutral @a ~ ~ ~ 1.2 1.6
execute if entity @s[tag=HGNoiseMaking] if block ~ ~ ~ water run playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 1.2 0.6
execute if entity @s[tag=HGNoiseMaking] if block ~ ~ ~ water run particle bubble_column_up ^ ^ ^0.5 0.2 0.2 0.2 0 10
tag @s remove HGNoiseMaking
execute if data entity @s {HurtTime:10s} run playsound entity.ghast.hurt neutral @a ~ ~ ~ 1.2 1.8
execute if data entity @s {HurtTime:10s} run playsound entity.vex.hurt neutral @a ~ ~ ~ 1.2 0.8
execute if data entity @s {HurtTime:10s} run playsound entity.vex.hurt neutral @a ~ ~ ~ 1.2 0.6
# Update orientation
execute on passengers run rotate @s[tag=HGDriedGhastDisplay] ~ 0
# Remove excess cow data
data modify entity @s InLove set value false
# Add displays back
function happy:dried/parts/body
function happy:dried/parts/ghasticleleftfront
function happy:dried/parts/ghasticlerightfront
function happy:dried/parts/ghasticleleftmid
function happy:dried/parts/ghasticlerightmid
function happy:dried/parts/ghasticleleftback
function happy:dried/parts/ghasticlerightback
# Turn into a ghastling when in water
execute unless block ~ ~ ~ water run return run attribute @s gravity modifier remove happy:hydrating
scoreboard players add @s HGGrowthTime 1
attribute @s gravity modifier add happy:hydrating 1 add_value
execute if predicate {condition:"random_chance",chance:0.05} run particle happy_villager ~ ~0.6 ~ 0.3 0.1 0.3 0 1
execute unless score @s HGGrowthTime matches 12000.. run return fail
function happy:ghastling/spawn
tp @s ~ -1000 ~
kill @s