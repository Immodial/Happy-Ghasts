## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhastHitbox] run return fail
summon shulker ~ ~ ~ {Tags:["HGHappyGhastDisplay","HGHappyGhastHitbox","HGHappyGhastFormatting"],NoAI:true,Silent:true,attributes:[{id:"scale",base:3},{id:"max_health",base:26}],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"resistance",duration:-1,amplifier:9,show_particles:false}],DeathLootTable:"",DeathTime:100s}
ride @n[tag=HGHappyGhastFormatting] mount @s
tag @e remove HGHappyGhastFormatting