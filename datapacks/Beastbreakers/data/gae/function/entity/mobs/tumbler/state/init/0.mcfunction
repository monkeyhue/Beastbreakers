#// Scores
data modify storage monkeylib:temp changeAnim.hurt set value 1
data modify storage monkeylib:temp changeAnim.animLength set value 40

#// Data
data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/idle"
data modify storage gae:temp currentEntity.movement.moveSpeed set value 0.0

#// Execute
function monkeylib:entity/change_state

#// Post
execute store result score @s monkeylib.entity.behaviorTime run random value 0..120
scoreboard players set @s monkeylib.entity.AIInit 0

#// Check if hitboxes are still intact
execute on passengers on vehicle run scoreboard players add @s monkeylib.temp1 1
execute unless score @s monkeylib.temp1 matches 2 run return run function gae:entity/mobs/tumbler/state/die with storage gae:temp currentEntity
scoreboard players reset @s monkeylib.temp1

#// Attempt a despawn
execute unless entity @p[distance=..112] run function gae:entity/mobs/generic/despawn with storage gae:temp currentEntity