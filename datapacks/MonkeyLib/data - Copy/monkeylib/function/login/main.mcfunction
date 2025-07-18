scoreboard players enable @s monkeylib.doLoginMessage
execute unless entity @s[tag=monkeylib.noLoginMsg] run function monkeylib:login/msg
scoreboard players reset @s monkeylib.login