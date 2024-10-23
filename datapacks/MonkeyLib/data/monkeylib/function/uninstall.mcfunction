#// Uninstall Entity Library
execute if score #monkeylib.lib.entity monkeylib.temp1 matches 1.. run function monkeylib:entity/uninstall

#// Uninstall Item
execute if score #monkeylib.lib.item monkeylib.temp1 matches 1.. run function monkeylib:item/uninstall

#// Uninstall Block
execute if score #monkeylib.lib.block monkeylib.temp1 matches 1.. run function monkeylib:block/uninstall

#// Uninstall main
scoreboard objectives remove monkeylib.death
scoreboard objectives remove monkeylib.temp1
scoreboard objectives remove monkeylib.login
scoreboard objectives remove monkeylib.doLoginMessage

#// Uninstall Time
scoreboard objectives remove monkeylib.time1
scoreboard objectives remove monkeylib.time2
scoreboard objectives remove monkeylib.time3
scoreboard objectives remove monkeylib.time4
scoreboard objectives remove monkeylib.time5
scoreboard objectives remove monkeylib.time6
scoreboard objectives remove monkeylib.time7
scoreboard objectives remove monkeylib.time8

schedule clear monkeylib:tick
tellraw @s {"text":"Successfully uninstalled Monkeylib and all its modules","color":"white"}