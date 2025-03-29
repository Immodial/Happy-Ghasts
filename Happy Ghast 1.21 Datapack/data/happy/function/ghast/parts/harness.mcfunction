## >> From: happy:ghast/loop
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Possibly replace happy ghast body
## >> Input: None
execute on passengers if entity @s[tag=HGHappyGhastHarness] run return fail
summon item_display ~ ~ ~ {Tags:["HGHappyGhastDisplay","HGHappyGhastHarness","HGHappyGhastFormatting"],item:{id:"stone",components:{item_model:"happy:blue_harness"}},teleport_duration:2}
ride @n[tag=HGHappyGhastFormatting] mount @s
data modify entity @n[tag=HGHappyGhastFormatting] transformation.translation set value [0d,1.2d,0d]
data modify entity @n[tag=HGHappyGhastFormatting] transformation.scale set value [3.5d,3.5d,3.5d]
execute if entity @s[tag=HGHarnessedRed] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:red_harness"
execute if entity @s[tag=HGHarnessedOrange] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:orange_harness"
execute if entity @s[tag=HGHarnessedYellow] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:yellow_harness"
execute if entity @s[tag=HGHarnessedLime] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:lime_harness"
execute if entity @s[tag=HGHarnessedGreen] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:green_harness"
execute if entity @s[tag=HGHarnessedCyan] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:cyan_harness"
execute if entity @s[tag=HGHarnessedLightBlue] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:light_blue_harness"
execute if entity @s[tag=HGHarnessedBlue] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:blue_harness"
execute if entity @s[tag=HGHarnessedPurple] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:purple_harness"
execute if entity @s[tag=HGHarnessedMagenta] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:magenta_harness"
execute if entity @s[tag=HGHarnessedPink] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:pink_harness"
execute if entity @s[tag=HGHarnessedWhite] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:white_harness"
execute if entity @s[tag=HGHarnessedLightGray] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:light_gray_harness"
execute if entity @s[tag=HGHarnessedGray] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:gray_harness"
execute if entity @s[tag=HGHarnessedBlack] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:black_harness"
execute if entity @s[tag=HGHarnessedBrown] run data modify entity @n[tag=HGHappyGhastFormatting] item.components."minecraft:item_model" set value "happy:brown_harness"
tag @e remove HGHappyGhastFormatting