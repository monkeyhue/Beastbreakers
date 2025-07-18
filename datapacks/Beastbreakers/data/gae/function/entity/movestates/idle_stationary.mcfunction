# Execute gravity
$data modify storage gae:temp currentEntity set from storage gae:root currentEntities.$(id)
execute unless block ~ ~-0.02 ~ #monkeylib:intangible run function gae:entity/movestates/motions/rise_from_ground with storage gae:temp currentEntity
execute if block ~ ~-0.12 ~ #monkeylib:intangible run function gae:entity/movestates/motions/gravity with storage gae:temp currentEntity
execute if score @s monkeylib.entity.oY >= #0 monkeylib.temp1 if score @s monkeylib.entity.fallDistance matches 1.. run function gae:entity/mobs/generic/actions/fall_damage with storage gae:temp currentEntity

#data modify storage gae:temp currentEntity.movement.oX set value 0
execute store result storage gae:temp currentEntity.movement.oY float 0.01 run scoreboard players get @s monkeylib.entity.oY
#data modify storage gae:temp currentEntity.movement.oZ set value 0

function gae:entity/movestates/motions/execute with storage gae:temp movement

#scoreboard players reset @s monkeylib.entity.oX
scoreboard players reset @s monkeylib.entity.oY
#scoreboard players reset @s monkeylib.entity.oZ

$data modify storage gae:root currentEntities.$(id) set from storage gae:temp currentEntity
data remove storage gae:temp currentEntity