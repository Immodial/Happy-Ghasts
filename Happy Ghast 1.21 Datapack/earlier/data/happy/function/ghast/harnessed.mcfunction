## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Run functions only nessecary if harnessed
## >> Input: None
# Move seats back into place
tag @s add HGHappyGhastSeated
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatFront] if function happy:ghast/hasthisattachment run tag @s add HGDriverSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatLeft] if function happy:ghast/hasthisattachment run tag @s add HGLeftPassengerSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatRight] if function happy:ghast/hasthisattachment run tag @s add HGRightPassengerSeat
execute if entity @s[tag=HGHarnessed] as @e[tag=HGHappyGhastSeatBack] if function happy:ghast/hasthisattachment run tag @s add HGBackPassengerSeat
tag @s remove HGHappyGhastSeated
# Find riders and driver
execute as @e[tag=HGHappyGhastSeat] on passengers run tag @s[type=player] add HGRider
tag @a[tag=HGRider] add HGRiding
execute as @n[tag=HGDriverSeat] on passengers run tag @s[type=player] add HGDriver
# Adjust parts to match driving
execute if entity @a[tag=HGDriver] run return run function happy:ghast/riding
execute rotated ~ 0 run function happy:ghast/reseat
execute store result score @s HGLastRotation run data get entity @s Rotation[0] 1
execute on passengers run data merge entity @s[tag=HGHappyGhastGoggles] {transformation:{left_rotation:[-0.4d,0d,0d,0.915d]},start_interpolation:0,interpolation_duration:2}