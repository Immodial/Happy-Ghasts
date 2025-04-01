## >> From: happy:tick
## >> At: Any ghasticle
## >> As: Any ghasticle
## >> Does: Move
## >> Input: None
scoreboard players add @s HGGhasticleTime 1
scoreboard players set @s[scores={HGGhasticleTime=30..}] HGGhasticleTime 0

execute if score @s HGGhasticleTime matches 0 run data merge entity @s {transformation:{left_rotation:[0.35f,0f,0f,0.935f]},start_interpolation:0,interpolation_duration:20}
execute if score @s HGGhasticleTime matches 15 run data merge entity @s {transformation:{left_rotation:[0.1f,0f,0f,0.995f]},start_interpolation:0,interpolation_duration:20}