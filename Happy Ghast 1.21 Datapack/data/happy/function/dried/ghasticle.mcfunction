## >> From: happy:tick
## >> At: Any floor ghasticle
## >> As: Any floor ghasticle
## >> Does: Move
## >> Input: None
execute unless score @s HGGhasticleStartup matches 1.. on vehicle if data entity @s {Motion:[0d,0d,0d]} run return fail
scoreboard players remove @s HGGhasticleStartup 1
scoreboard players add @s HGGhasticleTime 1
scoreboard players set @s[scores={HGGhasticleTime=20..}] HGGhasticleTime 0
execute if score @s[tag=HGLeftGhasticle] HGGhasticleTime matches 0 run data modify entity @s transformation.left_rotation set value [0f,-0.6f,0f,0.8f]
execute if score @s[tag=HGLeftGhasticle] HGGhasticleTime matches 10 run data modify entity @s transformation.left_rotation set value [0f,-0.35f,0f,0.935f]
execute if score @s[tag=HGRightGhasticle] HGGhasticleTime matches 0 run data modify entity @s transformation.left_rotation set value [0f,0.6f,0f,0.8f]
execute if score @s[tag=HGRightGhasticle] HGGhasticleTime matches 10 run data modify entity @s transformation.left_rotation set value [0f,0.35f,0f,0.935f]