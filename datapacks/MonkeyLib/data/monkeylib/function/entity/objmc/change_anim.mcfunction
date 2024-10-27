scoreboard players operation #temp monkeylib.temp1 = #monkeylib.gametime monkeylib.time1
$scoreboard players set #monkeylib.animLength monkeylib.temp1 $(animLength)

# Get Autoanimation Frame
scoreboard players operation #temp monkeylib.temp1 %= #24000 monkeylib.temp1
scoreboard players operation #temp monkeylib.temp1 %= #monkeylib.animLength monkeylib.temp1

#Append frame to G
scoreboard players operation #temp monkeylib.temp1 *= #256 monkeylib.temp1
scoreboard players operation #sum monkeylib.temp1 += #temp monkeylib.temp1

#Account for Hurt Time
execute store result score #temp monkeylib.temp1 run data get entity @s item.components.minecraft:dyed_color.rgb 1
scoreboard players operation #temp monkeylib.temp1 %= #256 monkeylib.temp1
execute if score #temp monkeylib.temp1 matches 1.. run scoreboard players add #sum monkeylib.temp1 1

#Update Data
execute store result entity @s item.components.minecraft:dyed_color.rgb int 1 run scoreboard players get #sum monkeylib.temp1
$data modify entity @s item.components.minecraft:item_model set value "$(model)"
scoreboard players reset #temp monkeylib.temp1
scoreboard players reset #sum monkeylib.temp1
scoreboard players reset #monkeylib.animLength monkeylib.temp1