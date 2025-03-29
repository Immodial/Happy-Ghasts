## >> From: happy:tick
## >> At: Happy Ghast
## >> As: Happy Ghast Seat
## >> Does: Set seat positions
## >> Input: None
execute as @n[tag=HGDriverSeat] run tp @s ^ ^6.1 ^1.5
tag @e remove HGDriverSeat
execute as @n[tag=HGLeftPassengerSeat] run tp @s ^-1.5 ^6.1 ^
tag @e remove HGLeftPassengerSeat
execute as @n[tag=HGRightPassengerSeat] run tp @s ^1.5 ^6.1 ^
tag @e remove HGRightPassengerSeat
execute as @n[tag=HGBackPassengerSeat] run tp @s ^ ^6.1 ^-1.5
tag @e remove HGBackPassengerSeat