## >> From: happy:ghast/loop
## >> At: Happy Ghast
## >> As: Happy Ghast Equip Interaction being interacted
## >> Does: Equip ghast with 
## >> Input: None
execute on target unless data entity @s SelectedItem.components."minecraft:custom_data".HGGhastHarness run return fail
playsound happy:entity.happy_ghast.equip player @a ~ ~ ~ 2 1
execute on vehicle run tag @s add HGHarnessed
execute on target run tag @s add HGHarnessing
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"red"}] run tag @s add HGHarnessedRed
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"orange"}] run tag @s add HGHarnessedOrange
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"yellow"}] run tag @s add HGHarnessedYellow
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"lime"}] run tag @s add HGHarnessedLime
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"green"}] run tag @s add HGHarnessedGreen
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"cyan"}] run tag @s add HGHarnessedCyan
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"light_blue"}] run tag @s add HGHarnessedLightBlue
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"blue"}] run tag @s add HGHarnessedBlue
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"purple"}] run tag @s add HGHarnessedPurple
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"magenta"}] run tag @s add HGHarnessedMagenta
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"pink"}] run tag @s add HGHarnessedPink
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"white"}] run tag @s add HGHarnessedWhite
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"light_gray"}] run tag @s add HGHarnessedLightGray
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"gray"}] run tag @s add HGHarnessedGray
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"black"}] run tag @s add HGHarnessedBlack
execute on vehicle if items entity @n[tag=HGHarnessing] weapon.mainhand *[custom_data~{HGGhastHarness:"brown"}] run tag @s add HGHarnessedBrown
execute on target run tag @s remove HGHarnessing
kill @s