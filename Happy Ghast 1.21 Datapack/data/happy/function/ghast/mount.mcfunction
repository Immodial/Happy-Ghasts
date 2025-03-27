## >> From: happy:tick
## >> At: None
## >> As: Happy Ghast Seat Interaction being mounted
## >> Does: Mount player onto it
## >> Input: None
execute unless function happy:ghast/hitboxexists run return run kill @s
execute on target run tag @s add HGMounting
execute on vehicle run ride @n[tag=HGMounting] mount @s
tag @e remove HGMounting
data remove entity @s interaction