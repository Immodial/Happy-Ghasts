## >> From: happy:tick
## >> At: Happy Ghast
## >> As: Happy Ghast Seat
## >> Does: Set seat positions
## >> Input: None
tp @e[tag=HGDriverSeat] ^ ^6.1 ^1.5
tag @e remove HGDriverSeat
tp @e[tag=HGLeftPassengerSeat] ^-1.5 ^6.1 ^
tag @e remove HGLeftPassengerSeat
tp @e[tag=HGRightPassengerSeat] ^1.5 ^6.1 ^
tag @e remove HGRightPassengerSeat
tp @e[tag=HGBackPassengerSeat] ^ ^6.1 ^-1.5
tag @e remove HGBackPassengerSeat