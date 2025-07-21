#// Execute gravity
execute unless score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 if block ~ ~1.1 ~ #monkeylib:fluids run function gae:entity/movestates/motions/rise_from_ground
execute unless score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 if block ~ ~1 ~ #monkeylib:intangible_no_fluids run function gae:entity/movestates/motions/sink
execute if score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 run function gae:entity/movestates/motions/gravity

#// Might as well jump!
execute unless score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 if block ^ ^ ^1 #monkeylib:solid run scoreboard players set @s monkeylib.entity.fallSpeed -50

#data modify storage gae:temp currentEntity.movement.oX set value 0
execute store result storage gae:temp currentEntity.movement.oY float 0.01 run scoreboard players get @s monkeylib.entity.oY
#data modify storage gae:temp currentEntity.movement.oZ set value 0

#// Check for walls and valid positioning
scoreboard players add @s monkeylib.entity.wallCheck 1
execute positioned ~ ~1 ~ if score @s monkeylib.entity.wallCheck matches 10.. run function gae:entity/movestates/motions/check_bounds with storage gae:temp currentEntity.properties


#// Move
function gae:entity/movestates/motions/target_execute with storage gae:temp currentEntity.movement

#scoreboard players reset @s monkeylib.entity.oX
scoreboard players reset @s monkeylib.entity.oY
#scoreboard players reset @s monkeylib.entity.oZ