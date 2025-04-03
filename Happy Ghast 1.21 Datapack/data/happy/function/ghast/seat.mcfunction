## >> From: happy:tick
## >> At: None
## >> As: Happy Ghast Seat Interaction being mounted
## >> Does: Mount player onto it
## >> Input: None
execute unless loaded ~ ~ ~ run kill @s
execute at @s run function happy:ghast/parts/seatinteraction
execute store result score @s HGUUIDFirst run data get entity @s data.HappyGhastAttached[0]
execute store result score @s HGUUIDSecond run data get entity @s data.HappyGhastAttached[1]
execute store result score @s HGUUIDThird run data get entity @s data.HappyGhastAttached[2]
execute store result score @s HGUUIDFourth run data get entity @s data.HappyGhastAttached[3]
execute unless function happy:ghast/hasattachment run return run kill @s
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target run ride @s dismount
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target run ride @s mount @n[tag=HGAttachmentChecking]
execute on passengers unless entity @s[type=player] on vehicle on passengers if entity @s[tag=HGSeatInteraction] on target at @s run playsound happy:entity.happy_ghast.ride player @a ~ ~ ~ 0.7 1
tag @s remove HGAttachmentChecking
execute on passengers run data remove entity @s[tag=HGSeatInteraction] interaction