#// Scores
data modify storage monkeylib:temp changeAnim.hurt set value 1
data modify storage monkeylib:temp changeAnim.animLength set value 40

#// Data
data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/idle"
$data modify storage gae:root currentEntities.$(id).moveSpeed set value 0

#// Execute
function monkeylib:entity/change_state

#// Post
execute store result score @s monkeylib.entity.behaviorTime run random value 0..79
scoreboard players set @s monkeylib.entity.AIState 0

#// Check if hitboxes are still intact
execute on passengers on vehicle run scoreboard players add @s monkeylib.temp1 1
$execute unless score @s monkeylib.temp1 matches 2 run return run function gae:entity/mobs/tumbler/state/die with storage gae:root currentEntities.$(id)
scoreboard players reset @s monkeylib.temp1