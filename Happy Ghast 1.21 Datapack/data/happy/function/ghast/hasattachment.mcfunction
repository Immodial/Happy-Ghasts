## >> From: happy:ghast/seat
## >> At: None
## >> As: Any happy ghast seat
## >> Does: Check for happy ghast to be attached to
## >> Input: None
tag @s add HGAttachmentChecking
execute as @e[type=parrot,tag=HGHappyGhast,tag=HGHarnessed] if score @n[tag=HGAttachmentChecking] HGUUIDFirst = @s HGUUIDFirst if score @n[tag=HGAttachmentChecking] HGUUIDSecond = @s HGUUIDSecond if score @n[tag=HGAttachmentChecking] HGUUIDThird = @s HGUUIDThird if score @n[tag=HGAttachmentChecking] HGUUIDFourth = @s HGUUIDFourth run return 1
tag @s remove HGAttachmentChecking
return fail