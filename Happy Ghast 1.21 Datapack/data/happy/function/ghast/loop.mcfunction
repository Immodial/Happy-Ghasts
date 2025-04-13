## >> From: happy:tick
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Update
## >> Input: None
# Get off ground
execute store result score _Velocity HGGlobals run data get entity @s Motion[1] 100
execute unless block ~ ~-1 ~ air if score _Velocity HGGlobals matches ..-1 run data modify entity @s Motion[1] set value 0.02d
execute unless block ~ ~-2 ~ air if score _Velocity HGGlobals matches ..-1 run data modify entity @s Motion[1] set value 0.01d
data modify entity @s[nbt={OnGround:1b}] Motion[1] set value 0.3d
scoreboard players reset _Velocity HGGlobals
# Play sounds
execute if predicate {condition:"random_chance",chance:0.01} run playsound happy:entity.happy_ghast.ambient neutral @a ~ ~ ~ 1.2 1
execute if data entity @s {HurtTime:10s} run playsound happy:entity.happy_ghast.hurt neutral @a ~ ~ ~ 1.2 1
# Update orientation
execute on passengers run rotate @s[tag=HGHappyGhastDisplay] ~ 0
# Remove excess parrot data
data remove entity @s Owner
data modify entity @s InLove set value false
data modify entity @s Sitting set value false
# Add displays back
function happy:ghast/parts/body
function happy:ghast/parts/hitbox
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/harness
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/goggles
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/seatfront
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/seatleft
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/seatright
execute if entity @s[tag=HGHarnessed] run function happy:ghast/parts/seatback
execute if entity @s[tag=!HGHarnessed] run function happy:ghast/parts/equip
function happy:ghast/parts/ghasticleleftfront
function happy:ghast/parts/ghasticlecenterfront
function happy:ghast/parts/ghasticlerightfront
function happy:ghast/parts/ghasticleleftmid
function happy:ghast/parts/ghasticlecentermid
function happy:ghast/parts/ghasticlerightmid
function happy:ghast/parts/ghasticleleftback
function happy:ghast/parts/ghasticlecenterback
function happy:ghast/parts/ghasticlerightback
# Apply harness
advancement grant @a[distance=..20] only happy:harnesses
execute on passengers if entity @s[tag=HGHappyGhastEquip] if data entity @s interaction run function happy:ghast/equip
execute on passengers if entity @s[tag=HGHappyGhastEquip] run data remove entity @s interaction
# Control when being ridden
execute store result score @s HGUUIDFirst run data get entity @s UUID[0]
execute store result score @s HGUUIDSecond run data get entity @s UUID[1]
execute store result score @s HGUUIDThird run data get entity @s UUID[2]
execute store result score @s HGUUIDFourth run data get entity @s UUID[3]
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatFront] if function happy:ghast/hasthisattachment run tag @s add HGDriverSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatLeft] if function happy:ghast/hasthisattachment run tag @s add HGLeftPassengerSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatRight] if function happy:ghast/hasthisattachment run tag @s add HGRightPassengerSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatBack] if function happy:ghast/hasthisattachment run tag @s add HGBackPassengerSeat
execute as @e[tag=HGHappyGhastSeat] on passengers run tag @s[type=player] add HGRider
tag @a[tag=HGRider] add HGRiding
execute as @n[tag=HGDriverSeat] on passengers run tag @s[type=player] add HGDriver
execute if entity @a[tag=HGDriver] run return run function happy:ghast/riding
execute rotated ~ 0 run function happy:ghast/reseat
execute store result score @s HGLastRotation run data get entity @s Rotation[0] 1
execute on passengers run data modify entity @s[tag=HGHappyGhastGoggles] transformation.left_rotation set value [-0.4d,0d,0d,0.915d]
# Freeze when being stood on
execute positioned ~-2.5 ~4 ~-2.5 unless entity @a[tag=!HGRider,dx=4,dy=2,dz=4] run data modify entity @s NoAI set value false
execute positioned ~-2.5 ~4 ~-2.5 if entity @a[tag=!HGRider,dx=4,dy=2,dz=4] run data modify entity @s NoAI set value true
tag @a remove HGRider