$execute unless score @s monkeylib.entity.AIInit matches 1 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

scoreboard players add @s monkeylib.entity.behaviorTime 1

$function gae:entity/movestates/walk_to_point with storage gae:root currentEntities.$(id)

$execute if entity @n[type=area_effect_cloud,distance=..1,scores={monkeylib.entity.id=$(id)}] run function gae:entity/mobs/tumbler/actions/stop_walking with storage gae:temp entityProcessor

execute if block ~ ~ ~ #monkeylib:fluids if block ~ ~-1 ~ #monkeylib:intangible run scoreboard players set @s monkeylib.entity.AIState 2
execute if score @s monkeylib.entity.behaviorTime matches ..200 run return 0
scoreboard players set @s monkeylib.entity.AIState 0