#// Execute gravity
$data modify storage gae:temp currentEntity set from storage gae:root currentEntities.$(id)
execute unless block ~ ~ ~ #monkeylib:intangible run function gae:entity/movestates/motions/rise_from_ground with storage gae:temp currentEntity
execute unless score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 if block ~ ~-0.05 ~ #monkeylib:intangible run function gae:entity/movestates/motions/gravity with storage gae:temp currentEntity
execute if score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 run function gae:entity/movestates/motions/gravity with storage gae:temp currentEntity
execute if block ~ ~-1 ~ #monkeylib:solid if score @s monkeylib.entity.fallDistance matches 1.. run function gae:entity/mobs/generic/actions/fall_damage with storage gae:temp currentEntity

#// Might as well jump!
execute unless score @s monkeylib.entity.fallSpeed < #0 monkeylib.temp1 if block ^ ^0.6 ^0.6 #monkeylib:solid run scoreboard players set @s monkeylib.entity.fallSpeed -42

#data modify storage gae:temp currentEntity.movement.oX set value 0
execute store result storage gae:temp currentEntity.movement.oY float 0.01 run scoreboard players get @s monkeylib.entity.oY
#data modify storage gae:temp currentEntity.movement.oZ set value 0

#// Check for walls and valid positioning
#function gae:entity/movestates/motions/check_bounds with storage 

function gae:entity/movestates/motions/target_execute with storage gae:temp currentEntity.movement

#scoreboard players reset @s monkeylib.entity.oX
scoreboard players reset @s monkeylib.entity.oY
#scoreboard players reset @s monkeylib.entity.oZ

$data modify storage gae:root currentEntities.$(id) set from storage gae:temp currentEntity
data remove storage gae:temp currentEntity