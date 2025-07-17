execute store result storage gae:temp addNewEntity.id int 1 run scoreboard players get @s monkeylib.entity.id
data modify storage gae:temp addNewEntity.type set value "tumbler"
data modify storage gae:temp addNewEntity.speed set value 0.1
data modify storage gae:temp addNewEntity.stepHeight set value 1.5
data modify storage gae:temp addNewEntity.fallHeight set value 5
data modify storage gae:temp addNewEntity.rotationSpeed set value 5
data modify storage gae:temp addNewEntity.detectRadius set value 2
data modify storage gae:temp addNewEntity.coreHitbox set from entity @s data.gae.coreHitbox
function gae:entity/add_entry with storage gae:temp addNewEntity