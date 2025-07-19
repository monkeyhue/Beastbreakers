scoreboard players operation @s monkeylib.entity.fallSpeed += #5 monkeylib.temp1

execute if score @s monkeylib.entity.fallSpeed matches 392.. run scoreboard players set @s monkeylib.entity.fallSpeed 392

scoreboard players operation @s monkeylib.entity.oY -= @s monkeylib.entity.fallSpeed
scoreboard players operation @s monkeylib.entity.fallDistance += @s monkeylib.entity.fallSpeed

execute if score @s monkeylib.entity.fallSpeed matches 40..120 run function gae:entity/movestates/motions/ground_snap_light
execute if score @s monkeylib.entity.fallSpeed matches 120.. run function gae:entity/movestates/motions/ground_snap