## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start loops and add variables
## >> Input: None
# Objectives
scoreboard objectives remove HGGlobals
scoreboard objectives remove HGGhasticleTime
scoreboard objectives remove HGLastRotation
scoreboard objectives remove HGUUIDFirst
scoreboard objectives remove HGUUIDSecond
scoreboard objectives remove HGUUIDThird
scoreboard objectives remove HGUUIDFourth
# Loop
schedule clear happy:tick
schedule function happy:tick 1