## >> From: happy:tick
## >> At: Any happy ghast parrot base
## >> As: Any happy ghast parrot base
## >> Does: Update to proper entity
## >> Input: None
summon happy_ghast ~ ~ ~ {Tags:["HGHappyGhastUpdating"]}
execute if entity @s[tag=HGHarnessedRed] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with red_harness
execute if entity @s[tag=HGHarnessedOrange] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with orange_harness
execute if entity @s[tag=HGHarnessedYellow] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with yellow_harness
execute if entity @s[tag=HGHarnessedLime] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with lime_harness
execute if entity @s[tag=HGHarnessedGreen] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with green_harness
execute if entity @s[tag=HGHarnessedCyan] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with cyan_harness
execute if entity @s[tag=HGHarnessedLightBlue] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with light_blue_harness
execute if entity @s[tag=HGHarnessedBlue] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with blue_harness
execute if entity @s[tag=HGHarnessedPurple] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with purple_harness
execute if entity @s[tag=HGHarnessedMagenta] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with magenta_harness
execute if entity @s[tag=HGHarnessedPink] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with pink_harness
execute if entity @s[tag=HGHarnessedWhite] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with white_harness
execute if entity @s[tag=HGHarnessedLightGray] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with light_gray_harness
execute if entity @s[tag=HGHarnessedGray] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with gray_harness
execute if entity @s[tag=HGHarnessedBlack] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with black_harness
execute if entity @s[tag=HGHarnessedBrown] run item replace entity @n[tag=HGHappyGhastUpdating] armor.body with brown_harness
tag @e remove HGHappyGhastUpdating
kill @s