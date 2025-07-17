# Execute gravity
$execute unless block ~ ~ ~ #monkeylib:intangible run function gae:entity/movestates/motions/rise_from_ground with storage gae:root currentEntities.$(id)
$execute if block ~ ~-0.1 ~ #monkeylib:intangible run function gae:entity/movestates/motions/gravity with storage gae:root currentEntities.$(id)
$execute if score @s monkeylib.entity.oY >= #0 monkeylib.temp1 if score @s monkeylib.entity.fallDistance matches 1.. run function gae:entity/mobs/generic/actions/fall_damage with storage gae:root currentEntities.$(id)

execute store result storage gae:temp movement.oX float 0.01 run scoreboard players get @s monkeylib.entity.oX
execute store result storage gae:temp movement.oY float 0.01 run scoreboard players get @s monkeylib.entity.oY
execute store result storage gae:temp movement.oZ float 0.01 run scoreboard players get @s monkeylib.entity.oZ
data modify storage gae:temp movement.move set value 0

function gae:entity/movestates/motions/execute with storage gae:temp movement

scoreboard players reset @s monkeylib.entity.oX
scoreboard players reset @s monkeylib.entity.oY
scoreboard players reset @s monkeylib.entity.oZ