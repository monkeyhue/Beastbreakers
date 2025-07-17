$scoreboard players set #temp monkeylib.temp1 $(fallHeight)
execute if score @s monkeylib.entity.fallDistance > #temp monkeylib.temp1

scoreboard players reset @s monkeylib.entity.fallDistance
scoreboard players reset #temp monkeylib.temp1