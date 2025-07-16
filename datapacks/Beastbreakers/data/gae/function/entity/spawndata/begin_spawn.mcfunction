execute store result storage gae:temp spawnFromData.id int 1.0 run scoreboard players get @s monkeylib.entity.id
data modify storage gae:temp spawnFromData.data set from entity @s data
data modify storage gae:temp spawnFromData.mob set from entity @s data.type
execute store result storage gae:temp spawnFromData.rotation int 1.0 run random value -179..180
function gae:entity/spawndata/spawn with storage gae:temp spawnFromData

kill @s