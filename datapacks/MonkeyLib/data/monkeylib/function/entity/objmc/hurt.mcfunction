execute store result score #sum monkeylib.temp1 run data get entity @s item.components.minecraft:dyed_color.rgb 1
scoreboard players operation #temp2 monkeylib.temp1 = #sum monkeylib.temp1
scoreboard players operation #temp2 monkeylib.temp1 %= #256 monkeylib.temp1
$scoreboard players set #temp monkeylib.temp1 $(hurt)

#Account for Hurt Time
execute if score #temp2 monkeylib.temp1 matches 0 if score #temp monkeylib.temp1 matches -1 run scoreboard players set #temp monkeylib.temp1 0
scoreboard players operation #sum monkeylib.temp1 += #temp monkeylib.temp1

#Update Data
execute store result entity @s item.components.minecraft:dyed_color.rgb int 1 run scoreboard players get #sum monkeylib.temp1
scoreboard players reset #sum monkeylib.temp1
scoreboard players reset #temp1 monkeylib.temp1
scoreboard players reset #temp2 monkeylib.temp1