## >> From: happy:ghast/loop
## >> At: Happy Ghast
## >> As: Happy Ghast Equip Interaction being interacted
## >> Does: Equip ghast with 
## >> Input: None
execute on target unless items entity @s weapon.mainhand *[custom_data~{HGGhastHarness:"blue"}] run return fail
playsound entity.leash_knot.place player @a ~ ~ ~ 2 0.4
playsound entity.strider.saddle player @a ~ ~ ~ 2 0.8
playsound block.chain.hit player @a ~ ~ ~ 2 0.6
execute on vehicle run tag @s add HGHarnessed
kill @s