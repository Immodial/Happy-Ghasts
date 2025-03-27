## >> From: Command
## >> At: Player that ran the Command
## >> As: Player that ran the Command
## >> Does: Spawn a Ghastling
## >> Input: None
summon parrot ~ ~ ~ {Tags:["HGGhastling","HGGhastlingSpawning"],Silent:true,Health:12f,attributes:[{id:"max_health",base:12},{id:"scale",base:2},{id:"flying_speed",base:1.5},{id:"gravity",base:0.02}],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"fire_resistance",duration:-1,show_particles:false}],DeathLootTable:""}
scoreboard players set @n[tag=HGGhastlingSpawning] HGGrowthTime 36000
tag @e remove HGGhastlingSpawning