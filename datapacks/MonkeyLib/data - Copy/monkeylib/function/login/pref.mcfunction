playsound minecraft:entity.experience_orb.pickup master @s
scoreboard players reset @s monkeylib.doLoginMessage
scoreboard players enable @a monkeylib.doLoginMessage

execute unless entity @s[tag=monkeylib.noLoginMsg] run tellraw @s {"text":"Login Message has been disabled.","color":"red"}
execute unless entity @s[tag=monkeylib.noLoginMsg] run tag @s add monkeylib.temp
execute unless entity @s[tag=monkeylib.noLoginMsg] run tag @s add monkeylib.noLoginMsg

execute if entity @s[tag=monkeylib.noLoginMsg,tag=!monkeylib.temp] run tellraw @s {"text":"Login Message has been enabled.","color":"green"}
execute if entity @s[tag=monkeylib.noLoginMsg,tag=!monkeylib.temp] run tag @s remove monkeylib.noLoginMsg

tag @s remove monkeylib.temp