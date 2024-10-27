say init run

scoreboard players set @s monkeylib.entity.maxHealth 100
scoreboard players set @s monkeylib.entity.health 100

execute store result storage gae:temp addNewEntity.id int 1 run scoreboard players get @s monkeylib.entity.id
data modify storage gae:temp addNewEntity.type set value "gae:tumbler"
data modify storage gae:temp addNewEntity.speed set value 0.1
function gae:entity/add_entry with storage gae:temp addNewEntity