#// Scores
data modify storage monkeylib:temp changeAnim.hurt set value 1
data modify storage monkeylib:temp changeAnim.animLength set value 32

#// Data
data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/swim"
data modify storage gae:temp currentEntity.movement.moveSpeed set value 0.13

#// Find a spot to wander to
data modify storage gae:temp wanderTarget.min set value 12
data modify storage gae:temp wanderTarget.max set value 36
execute store result score #temp monkeylib.temp1 run data get entity @s Pos[1]
scoreboard players add #temp monkeylib.temp1 1
execute store result storage gae:temp wanderTarget.under int 1.0 run scoreboard players get #temp monkeylib.temp1
$data modify storage gae:temp wanderTarget.id set value $(id)
execute summon area_effect_cloud run function gae:entity/mobs/generic/actions/find_wander_target with storage gae:temp wanderTarget

#// Execute
function monkeylib:entity/change_state

#// Post
scoreboard players set @s monkeylib.entity.AIInit 2