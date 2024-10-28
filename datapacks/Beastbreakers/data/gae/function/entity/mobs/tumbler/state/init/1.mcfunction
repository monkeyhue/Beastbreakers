#// Scores
data modify storage monkeylib:temp changeAnim.hurt set value 1
data modify storage monkeylib:temp changeAnim.animLength set value 30

#// Data
data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/walk"
$data modify storage gae:root currentEntities.$(id).moveSpeed set value 0.1
execute store result storage monkeylib:temp entityActions.rotate.x int 1 run random value -180..180
data modify storage monkeylib:temp entityActions.rotate.y set value 0

#// Execute
function gae:entity/mobs/generic/actions/rotate with storage monkeylib:temp entityActions.rotate
function monkeylib:entity/change_state

#// Post
execute store result score @s monkeylib.entity.behaviorTime run random value 0..59
scoreboard players set @s monkeylib.entity.AIState 1