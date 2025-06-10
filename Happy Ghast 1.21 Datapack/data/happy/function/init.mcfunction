## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start loops and add variables
## >> Input: None
# Objectives
scoreboard objectives add HGGlobals dummy "Global Variables"
scoreboard objectives add HGGrowthTime dummy "Time until Growth"
scoreboard objectives add HGGhasticleTime dummy "Ghasticle Swinging"
scoreboard objectives add HGGhasticleStartup dummy "Ghasticle Animation Startup"
scoreboard objectives add HGLastRotation dummy "Last Rotation"
# Static Variables
scoreboard players set %GrowthNumerator HGGlobals 9
scoreboard players set %GrowthDivisor HGGlobals 10
# Loop
schedule clear happy:tick
schedule function happy:tick 1