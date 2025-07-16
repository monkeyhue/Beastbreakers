$execute unless score @s monkeylib.entity.AIState matches 1 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

scoreboard players add @s monkeylib.entity.behaviorTime 1

#rotate @s facing entity @p feet

execute if block ~ ~0.5 ~ minecraft:water if block ^ ^-0.8 ^1.5 minecraft:water run return run rotate @s ~8 0
execute if block ^ ^-1.8 ^1.5 minecraft:water unless block ~ ~-0.25 ~ #monkeylib:intangible run return run rotate @s ~8 0
$function gae:entity/mobs/generic/actions/move with storage gae:root currentEntities.$(id)

execute if score @s monkeylib.entity.behaviorTime matches ..139 run return 0
execute if block ~ ~-0.25 ~ #monkeylib:intangible unless block ~ ~0.1 ~ #monkeylib:intangible run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 0
