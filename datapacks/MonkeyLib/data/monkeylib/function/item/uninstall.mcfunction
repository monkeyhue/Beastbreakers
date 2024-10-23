scoreboard objectives remove monkeylib.use
scoreboard objectives remove monkeylib.hit
scoreboard objectives remove monkeylib.hit.stone
scoreboard objectives remove monkeylib.item.slot

#// Register as downloaded
scoreboard players reset #monkeylib.lib.item monkeylib.active
tellraw @s {"text":"Successfully uninstalled Monkeylib Item module","color":"white"}