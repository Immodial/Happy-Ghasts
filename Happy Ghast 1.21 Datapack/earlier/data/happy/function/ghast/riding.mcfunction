## >> From: happy:ghast/loop
## >> At: Happy Ghast Parrot Base being ridden
## >> As: Happy Ghast Parrot Base being ridden
## >> Does: Manipulate motion/ai
## >> Input: None
tag @s add HGRidden
tag @a remove HGRider
data modify entity @s NoAI set value false
execute on passengers run data modify entity @s[tag=HGHappyGhastHitbox] Health set from entity @n[tag=HGRidden] Health
execute on passengers run data merge entity @s[tag=HGHappyGhastGoggles] {transformation:{left_rotation:[0d,0d,0d,1d]},start_interpolation:0,interpolation_duration:2}
# Steer rotation
execute as @p[tag=HGDriver] if predicate happy:left run scoreboard players remove @n[tag=HGRidden] HGLastRotation 2
execute as @p[tag=HGDriver] if predicate happy:right run scoreboard players add @n[tag=HGRidden] HGLastRotation 2
execute if score @s HGLastRotation matches ..-1 run scoreboard players add @s HGLastRotation 360
execute if score @s HGLastRotation matches 361.. run scoreboard players remove @s HGLastRotation 360
execute store result storage happyghast ForceRotation float 1 run scoreboard players get @s HGLastRotation
function happy:ghast/forcerotate with storage happyghast
execute rotated as @s on passengers run rotate @s[tag=HGHappyGhastDisplay] ~ 0
execute rotated as @s run function happy:ghast/reseat
# Steer vertically
execute as @p[tag=HGDriver] if predicate happy:up store result score _CurrentRise HGGlobals run data get entity @n[tag=HGRidden] Motion[1] 100
execute as @p[tag=HGDriver] if predicate happy:up run scoreboard players add _CurrentRise HGGlobals 4
execute as @p[tag=HGDriver] if predicate happy:up store result entity @n[tag=HGRidden] Motion[1] double 0.01 run scoreboard players get _CurrentRise HGGlobals
execute as @p[tag=HGDriver] if predicate happy:down store result score _CurrentRise HGGlobals run data get entity @n[tag=HGRidden] Motion[1] 100
execute as @p[tag=HGDriver] if predicate happy:down run scoreboard players remove _CurrentRise HGGlobals 3
execute as @p[tag=HGDriver] if predicate happy:down store result entity @n[tag=HGRidden] Motion[1] double 0.01 run scoreboard players get _CurrentRise HGGlobals
scoreboard players reset _CurrentRise HGGlobals
# Place steering entity and adjust if moving forward or back
execute rotated as @s as @p[tag=HGDriver] run summon marker ^ ^ ^0.02 {Tags:["HGRidingMeasure"]}
execute rotated as @s as @p[tag=HGDriver] if predicate happy:forward run tp @n[type=marker,tag=HGRidingMeasure] ^ ^ ^0.05
execute rotated as @s as @p[tag=HGDriver] if predicate happy:backward run tp @n[type=marker,tag=HGRidingMeasure] ^ ^ ^-0.02
# Modify X speed with marker
execute store result score _RidePos HGGlobals run data get entity @s Pos[0] 100
execute store result score _CurrentSpeed HGGlobals run data get entity @s Motion[0] 100
execute store result score _RideTarget HGGlobals run data get entity @n[type=marker,tag=HGRidingMeasure] Pos[0] 100
scoreboard players operation _RideTarget HGGlobals -= _RidePos HGGlobals
scoreboard players operation _RideTarget HGGlobals += _CurrentSpeed HGGlobals
execute store result entity @s Motion[0] double 0.01 run scoreboard players get _RideTarget HGGlobals
# Modify Z speed with marker
execute store result score _RidePos HGGlobals run data get entity @s Pos[2] 100
execute store result score _CurrentSpeed HGGlobals run data get entity @s Motion[2] 100
execute store result score _RideTarget HGGlobals run data get entity @n[type=marker,tag=HGRidingMeasure] Pos[2] 100
scoreboard players operation _RideTarget HGGlobals -= _RidePos HGGlobals
scoreboard players operation _RideTarget HGGlobals += _CurrentSpeed HGGlobals
execute store result entity @s Motion[2] double 0.01 run scoreboard players get _RideTarget HGGlobals
# Reset ride state
scoreboard players reset _RidePos HGGlobals
scoreboard players reset _CurrentSpeed HGGlobals
scoreboard players reset _RideTarget HGGlobals
kill @e[type=marker,tag=HGRidingMeasure]
tag @s remove HGRidden
tag @a remove HGDriver