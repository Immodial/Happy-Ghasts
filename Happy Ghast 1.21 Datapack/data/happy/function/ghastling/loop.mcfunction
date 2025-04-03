## >> From: happy:tick
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Update
## >> Input: None
# Get off ground
execute store result score _Velocity HGGlobals run data get entity @s Motion[1] 100
execute unless block ~ ~-1 ~ air if score _Velocity HGGlobals matches ..-1 run data modify entity @s Motion[1] set value 0.02d
data modify entity @s[nbt={OnGround:1b}] Motion[1] set value 0.2d
scoreboard players reset _Velocity HGGlobals
# Play sounds
execute if predicate {condition:"random_chance",chance:0.008} run tag @s add HGNoiseMaking
execute if entity @s[tag=HGNoiseMaking] run playsound happy:entity.ghastling.ambient neutral @a ~ ~ ~ 1.2 1
tag @s remove HGNoiseMaking
execute if data entity @s {HurtTime:10s} if predicate {condition:"random_chance",chance:0.3} run tag @s add HGNoise1
execute if data entity @s[tag=!HGNoise1] {HurtTime:10s} if predicate {condition:"random_chance",chance:0.3} run tag @s add HGNoise2
execute if data entity @s[tag=HGNoise1] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 1.3
execute if data entity @s[tag=HGNoise2] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 1.6
execute if data entity @s[tag=!HGNoise1,tag=!HGNoise2] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 1.8
tag @s remove HGNoise1
tag @s remove HGNoise2
# Eat snowballs
execute rotated ~ 0 positioned ^ ^1 ^1 run tag @e[type=snowball,distance=..1.5] add HGEaten
execute rotated ~ 0 positioned ^ ^1 ^1.5 run tag @e[type=snowball,distance=..1.5] add HGEaten
execute rotated ~ 0 positioned ^ ^1 ^2 run tag @e[type=snowball,distance=..1.5] add HGEaten
execute if entity @e[type=snowball,tag=HGEaten] run playsound entity.parrot.eat neutral @a ~ ~ ~ 1.2 0.4
execute if entity @e[type=snowball,tag=HGEaten] run playsound entity.allay.item_thrown neutral @a ~ ~ ~ 1.2 1.4
execute if entity @e[type=snowball,tag=HGEaten] run particle snowflake ^ ^0.5 ^1 0.1 0.1 0.1 0 3
execute at @e[type=snowball,tag=HGEaten] run scoreboard players operation @s HGGrowthTime *= %GrowthNumerator HGGlobals
execute at @e[type=snowball,tag=HGEaten] run scoreboard players operation @s HGGrowthTime /= %GrowthDivisor HGGlobals
kill @e[type=snowball,tag=HGEaten]
# Update orientation
execute on passengers run rotate @s[tag=HGGhastlingDisplay] ~ 0
# Remove excess parrot data
data remove entity @s Owner
data modify entity @s InLove set value false
data modify entity @s Sitting set value false
# Add displays back
function happy:ghastling/parts/body
function happy:ghastling/parts/ghasticleleftfront
function happy:ghastling/parts/ghasticlecenterfront
function happy:ghastling/parts/ghasticlerightfront
function happy:ghastling/parts/ghasticleleftmid
function happy:ghastling/parts/ghasticlecentermid
function happy:ghastling/parts/ghasticlerightmid
function happy:ghastling/parts/ghasticleleftback
function happy:ghastling/parts/ghasticlecenterback
function happy:ghastling/parts/ghasticlerightback
# Grow up
scoreboard players remove @s HGGrowthTime 1
execute if score @s HGGrowthTime matches ..0 run function happy:ghastling/evolve