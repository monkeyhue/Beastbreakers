$execute store result score #temp monkeylib.temp1 run data get storage gae:root currentEntities.$(id).fallSpeed 100
scoreboard players operation #temp monkeylib.temp1 *= #-1 monkeylib.temp1
scoreboard players operation #temp monkeylib.temp1 += #3 monkeylib.temp1

execute if score #temp monkeylib.temp1 matches 301.. run scoreboard players set #temp monkeylib.temp1 300
execute unless block ~ ~-2 ~ #monkeylib:intangible run scoreboard players set #temp monkeylib.temp1 25
execute unless block ~ ~ ~ #monkeylib:intangible run scoreboard players set #temp monkeylib.temp1 -10

$execute store result storage gae:root currentEntities.$(id).fallSpeed float -0.01 run scoreboard players get #temp monkeylib.temp1
scoreboard players reset #temp monkeylib.temp1