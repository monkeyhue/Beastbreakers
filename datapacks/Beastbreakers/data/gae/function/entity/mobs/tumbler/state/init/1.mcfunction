#// Scores
data modify storage monkeylib:temp changeAnim.hurt set value 1
data modify storage monkeylib:temp changeAnim.animLength set value 30

#// Data
data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/walk"
$data modify storage gae:root currentEntities.$(id).movement.moveSpeed set value 0.1

#// Find a spot to wander to
data modify storage gae:temp wanderTarget.min set value 6
data modify storage gae:temp wanderTarget.max set value 16
execute store result score #temp monkeylib.temp1 run data get entity @s Pos[1]
scoreboard players add #temp monkeylib.temp1 4
execute store result storage gae:temp wanderTarget.under int 1.0 run scoreboard players get #temp monkeylib.temp1
$data modify storage gae:temp wanderTarget.id set value $(id)
execute summon marker run function gae:entity/mobs/generic/actions/find_wander_target with storage gae:temp wanderTarget

#// Rotate to find that spot
$execute as $(coreHitbox) run function gae:entity/mobs/generic/actions/target_rotate with storage gae:root currentEntities.$(id).movement

#// Execute
function monkeylib:entity/change_state

#// Post
execute store result score @s monkeylib.entity.behaviorTime run random value 0..59
scoreboard players set @s monkeylib.entity.AIState 1