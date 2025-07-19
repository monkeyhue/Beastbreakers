$execute unless score @s monkeylib.entity.AIState matches 1 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

scoreboard players add @s monkeylib.entity.behaviorTime 1

$function gae:entity/movestates/walk_to_point with storage gae:root currentEntities.$(id)

$execute if block ~ ~ ~ #monkeylib:fluids if block ~ ~-1 ~ #monkeylib:intangible run data modify storage gae:root currentEntities.$(id).aiState set value 2
execute if score @s monkeylib.entity.behaviorTime matches ..200 run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 0
