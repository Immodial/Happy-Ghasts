## >> From: happy:tick
## >> At: Any dried ghast cow base
## >> As: Any dried ghast cow base
## >> Does: Update
## >> Input: None
# Play sounds
execute if predicate {condition:"random_chance",chance:0.005} run tag @s add HGNoiseMaking
execute if entity @s[tag=HGNoiseMaking] unless block ~ ~ ~ water run playsound happy:entity.dried_ghast.ambient neutral @a ~ ~ ~ 0.8 1
execute if entity @s[tag=HGNoiseMaking] if block ~ ~ ~ water run playsound happy:entity.dried_ghast.ambient_water neutral @a ~ ~ ~ 0.8 1
execute if entity @s[tag=HGNoiseMaking] if block ~ ~ ~ water run particle bubble_column_up ^ ^ ^0.5 0.2 0.2 0.2 0 10
tag @s remove HGNoiseMaking
execute if data entity @s {HurtTime:10s} run playsound happy:entity.dried_ghast.hurt neutral @a ~ ~ ~ 0.8 1
execute if data entity @s {HurtTime:10s} on attacker if entity @s[type=player,advancements={happy:hurt_dried=false}] run function happy:dried/warn
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
execute unless score @s HGGrowthTime matches 6000.. run return fail
execute on passengers run data modify entity @s[tag=HGDriedGhastBody] item.components."minecraft:item_model" set value "happy:rehydrating_ghast"
execute on passengers run data modify entity @s[tag=HGFloorGhasticle] item.components."minecraft:item_model" set value "happy:rehydrating_ghasticle"
execute unless score @s HGGrowthTime matches 12000.. run return fail
function happy:ghastling/spawn
playsound happy:entity.ghastling.spawn neutral @a ~ ~ ~ 2 1
tp @s ~ -1000 ~
kill @s