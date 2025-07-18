scoreboard players operation @s monkeylib.entity.fallSpeed += #3 monkeylib.temp1

execute if score @s monkeylib.entity.fallSpeed matches 13.. run scoreboard players set @s monkeylib.entity.fallSpeed 13
execute unless block ~ ~-3 ~ #monkeylib:intangible run scoreboard players set @s monkeylib.entity.fallSpeed 50

scoreboard players operation @s monkeylib.entity.oY -= @s monkeylib.entity.fallSpeed
scoreboard players operation @s monkeylib.entity.fallDistance += @s monkeylib.entity.fallSpeed