#// Execute gravity
$execute unless block ~ ~ ~ #monkeylib:intangible run function gae:entity/movestates/motions/rise_from_ground with storage gae:root currentEntities.$(id)
$execute if block ~ ~-0.1 ~ #monkeylib:intangible run function gae:entity/movestates/motions/gravity with storage gae:root currentEntities.$(id)
$execute if score @s monkeylib.entity.oY >= #0 monkeylib.temp1 if score @s monkeylib.entity.fallDistance matches 1.. run function gae:entity/mobs/generic/actions/fall_damage with storage gae:root currentEntities.$(id)

data modify storage gae:temp movement.oX set value 0
$data modify storage gae:temp movement.oY set from storage gae:root currentEntities.$(id).fallSpeed
data modify storage gae:temp movement.oZ set value 0
$data modify storage gae:temp movement.move set from storage gae:root currentEntities.$(id).moveSpeed

#// Extra info for target_execute
$data modify storage gae:temp movement.rotationSpeed set from storage gae:root currentEntities.$(id).rotationSpeed
$data modify storage gae:temp movement.coreHitbox set from storage gae:root currentEntities.$(id).coreHitbox

function gae:entity/movestates/motions/target_execute with storage gae:temp movement