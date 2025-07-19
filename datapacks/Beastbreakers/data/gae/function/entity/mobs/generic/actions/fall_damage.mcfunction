$scoreboard players set #temp monkeylib.temp1 $(fallHeight)
scoreboard players operation #temp monkeylib.temp1 *= #100 monkeylib.temp1
scoreboard players operation @s monkeylib.entity.fallDistance -= #temp monkeylib.temp1

# Apply fall damage if appropriate
execute if score @s monkeylib.entity.fallDistance >= #1 monkeylib.temp1 store result storage monkeylib:temp dynamicDmg.amount int 0.01 run scoreboard players get @s monkeylib.entity.fallDistance
execute if score @s monkeylib.entity.fallDistance >= #1 monkeylib.temp1 run data modify storage monkeylib:temp dynamicDmg.type set value "minecraft:fall" 
$execute if score @s monkeylib.entity.fallDistance >= #1 monkeylib.temp1 as $(coreHitbox) run function monkeylib:damage/simple with storage monkeylib:temp dynamicDmg

# Reset scores
scoreboard players reset @s monkeylib.entity.fallDistance
scoreboard players reset @s monkeylib.entity.fallSpeed
scoreboard players reset #temp monkeylib.temp1