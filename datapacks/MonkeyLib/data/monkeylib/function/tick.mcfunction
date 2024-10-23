#-- Tickly Functions ---
scoreboard players add #monkeylib.gametime monkeylib.time1 1
execute as @a at @s run function monkeylib:player_main

#// Entity Library
execute if score #monkeylib.lib.entity monkeylib.active matches 1.. as @e[type=#monkeylib.tickly,tag=monkeylib.entity] at @s run function monkeylib:entity/tick

#// Block Library
execute if score #monkeylib.lib.block monkeylib.active matches 1.. as @e[type=minecraft:block_display,tag=monkeylib.block] at @s run function monkeylib:block/tick

#// Item Library is located in the player_main function

schedule function monkeylib:tick 1t