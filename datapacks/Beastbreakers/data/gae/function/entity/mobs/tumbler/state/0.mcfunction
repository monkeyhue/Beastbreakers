execute unless score @s monkeylib.entity.AIState matches 0 run data modify storage monkeylib:temp changeAnim.hurt set value 1
execute unless score @s monkeylib.entity.AIState matches 0 run data modify storage monkeylib:temp changeAnim.animLength set value 40
execute unless score @s monkeylib.entity.AIState matches 0 run data modify storage monkeylib:temp changeAnim.model set value "gae:entity/tumbler/idle"
$execute unless score @s monkeylib.entity.AIState matches 1 run data modify storage gae:root currentEntities.$(id).moveSpeed set value 0
execute unless score @s monkeylib.entity.AIState matches 0 run function monkeylib:entity/change_state
execute unless score @s monkeylib.entity.AIState matches 0 run scoreboard players set @s monkeylib.entity.AIState 0

scoreboard players add @s monkeylib.entity.behaviorTime 1

$execute if block ~ ~-0.25 ~ #monkeylib:intangible run function gae:entity/mobs/generic/actions/move with storage gae:root currentEntities.$(id)

execute if score @s monkeylib.entity.behaviorTime matches ..99 run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 1