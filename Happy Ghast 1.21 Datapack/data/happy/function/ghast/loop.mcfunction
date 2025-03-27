## >> From: happy:tick
## >> At: Any ghastling parrot base
## >> As: Any ghastling parrot base
## >> Does: Update
## >> Input: None
# Get off ground
execute store result score _Velocity HGGlobals run data get entity @s Motion[1] 100
execute unless block ~ ~-1 ~ air if score _Velocity HGGlobals matches ..-1 run data modify entity @s Motion[1] set value 0.02d
execute unless block ~ ~-2 ~ air if score _Velocity HGGlobals matches ..-1 run data modify entity @s Motion[1] set value 0.01d
data modify entity @s[nbt={OnGround:1b}] Motion[1] set value 0.3d
scoreboard players reset _Velocity HGGlobals
# Play sounds
execute if predicate {condition:"random_chance",chance:0.01} run tag @s add HGNoiseMaking
execute if entity @s[tag=HGNoiseMaking] run playsound entity.ghast.ambient neutral @a ~ ~ ~ 1.2 1.2
execute if entity @s[tag=HGNoiseMaking] run playsound entity.allay.item_given neutral @a ~ ~ ~ 1.2 0.6
execute if entity @s[tag=HGNoiseMaking] run playsound entity.allay.item_taken neutral @a ~ ~ ~ 1.2 0.9
tag @s remove HGNoiseMaking
execute if data entity @s {HurtTime:10s} if predicate {condition:"random_chance",chance:0.3} run tag @s add HGNoise1
execute if data entity @s[tag=!HGNoise1] {HurtTime:10s} if predicate {condition:"random_chance",chance:0.3} run tag @s add HGNoise2
execute if data entity @s[tag=HGNoise1] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 0.9
execute if data entity @s[tag=HGNoise2] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 1
execute if data entity @s[tag=!HGNoise1,tag=!HGNoise2] {HurtTime:10s} run playsound entity.ghast.scream neutral @a ~ ~ ~ 1.2 1.2
execute if data entity @s {HurtTime:10s} run playsound entity.allay.hurt neutral @a ~ ~ ~ 1.2 0.6
tag @s remove HGNoise1
tag @s remove HGNoise2
# Update orientation
execute on passengers run rotate @s[tag=HGHappyGhastDisplay] ~ 0
# Remove excess parrot data
data remove entity @s Owner
data modify entity @s InLove set value false
data modify entity @s Sitting set value false
# Add displays back
function happy:ghast/parts/body
function happy:ghast/parts/hitbox
execute on passengers if entity @s[tag=HGHappyGhastHitbox] run function happy:ghast/parts/seat
function happy:ghast/parts/ghasticleleftfront
function happy:ghast/parts/ghasticlecenterfront
function happy:ghast/parts/ghasticlerightfront
function happy:ghast/parts/ghasticleleftmid
function happy:ghast/parts/ghasticlecentermid
function happy:ghast/parts/ghasticlerightmid
function happy:ghast/parts/ghasticleleftback
function happy:ghast/parts/ghasticlecenterback
function happy:ghast/parts/ghasticlerightback
# Control when being ridden
execute on passengers if entity @s[tag=HGHappyGhastHitbox] on passengers run tag @s add HGRider
execute if entity @a[tag=HGRider] run return run function happy:ghast/riding
execute store result score @s HGLastRotation run data get entity @s Rotation[0] 1
# Freeze when being stood on
execute positioned ~-2.5 ~4 ~-2.5 unless entity @a[tag=!HGRider,dx=4,dy=2,dz=4] run data modify entity @s NoAI set value false
execute positioned ~-2.5 ~4 ~-2.5 if entity @a[tag=!HGRider,dx=4,dy=2,dz=4] run data modify entity @s NoAI set value true