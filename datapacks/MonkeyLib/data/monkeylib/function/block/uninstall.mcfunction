#// Remove all module scoreboards
scoreboard objectives remove monkeylib.block.state

#// Register as downloaded
scoreboard players reset #monkeylib.lib.block monkeylib.active
tellraw @s {"text":"Successfully uninstalled Monkeylib Block module","color":"white"}