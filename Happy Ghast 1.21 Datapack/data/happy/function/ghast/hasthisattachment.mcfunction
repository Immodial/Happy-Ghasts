## >> From: happy:ghast/parts/loop, happy:ghast/parts/seatfront
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast seat
## >> Does: Check for ghast
## >> Input: None
execute if score @n[tag=HGHarnessed] HGUUIDFirst = @s HGUUIDFirst if score @n[tag=HGHarnessed] HGUUIDSecond = @s HGUUIDSecond if score @n[tag=HGHarnessed] HGUUIDThird = @s HGUUIDThird if score @n[tag=HGHarnessed] HGUUIDFourth = @s HGUUIDFourth run return 1
return fail