$execute unless score @s monkeylib.entity.AIState matches 1 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

scoreboard players add @s monkeylib.entity.behaviorTime 1

#rotate @s facing entity @p feet

$function gae:entity/movestates/idle_stationary with storage gae:root currentEntities.$(id)

execute if score @s monkeylib.entity.behaviorTime matches ..139 run return 0
execute if block ~ ~-0.25 ~ #monkeylib:intangible unless block ~ ~0.1 ~ #monkeylib:intangible run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 0
