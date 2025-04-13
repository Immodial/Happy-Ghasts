## >> From: happy:tick
## >> At: None
## >> As: Any player
## >> Does: Update items to new version
## >> Input: None
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"black"}] run give @s black_harness
clear @s *[custom_data~{HGGhastHarness:"black"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"red"}] run give @s red_harness
clear @s *[custom_data~{HGGhastHarness:"red"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"orange"}] run give @s orange_harness
clear @s *[custom_data~{HGGhastHarness:"orange"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"yellow"}] run give @s yellow_harness
clear @s *[custom_data~{HGGhastHarness:"yellow"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"lime"}] run give @s lime_harness
clear @s *[custom_data~{HGGhastHarness:"lime"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"green"}] run give @s green_harness
clear @s *[custom_data~{HGGhastHarness:"green"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"cyan"}] run give @s cyan_harness
clear @s *[custom_data~{HGGhastHarness:"cyan"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"light_blue"}] run give @s light_blue_harness
clear @s *[custom_data~{HGGhastHarness:"light_blue"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"blue"}] run give @s blue_harness
clear @s *[custom_data~{HGGhastHarness:"blue"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"purple"}] run give @s purple_harness
clear @s *[custom_data~{HGGhastHarness:"purple"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"magenta"}] run give @s magenta_harness
clear @s *[custom_data~{HGGhastHarness:"magenta"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"pink"}] run give @s pink_harness
clear @s *[custom_data~{HGGhastHarness:"pink"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"white"}] run give @s white_harness
clear @s *[custom_data~{HGGhastHarness:"white"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"light_gray"}] run give @s light_gray_harness
clear @s *[custom_data~{HGGhastHarness:"light_gray"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"gray"}] run give @s gray_harness
clear @s *[custom_data~{HGGhastHarness:"gray"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"black"}] run give @s black_harness
clear @s *[custom_data~{HGGhastHarness:"black"}] 1
execute if items entity @s container.* *[custom_data~{HGGhastHarness:"brown"}] run give @s brown_harness
clear @s *[custom_data~{HGGhastHarness:"brown"}] 1
execute if items entity @s container.* *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGDriedGhastSpawn"]}] run give @s dried_ghast
clear @s *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGDriedGhastSpawn"]}] 1
execute if items entity @s container.* *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGGhastlingSpawn"]}] run give @s dried_ghast
clear @s *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGGhastlingSpawn"]}] 1
execute if items entity @s container.* *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGHappyGhastSpawn"]}] run give @s happy_ghast_spawn_egg
clear @s *[entity_data={id:"minecraft:marker",Tags:["HGSpawnEgg","HGHappyGhastSpawn"]}] 1