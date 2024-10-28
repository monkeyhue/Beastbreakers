$execute unless score @s monkeylib.entity.AIState matches 0 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

scoreboard players add @s monkeylib.entity.behaviorTime 1

$execute if block ~ ~-0.15 ~ #monkeylib:intangible run function gae:entity/mobs/generic/actions/move with storage gae:root currentEntities.$(id)
$execute unless block ~ ~ ~ #monkeylib:intangible run function gae:entity/mobs/generic/actions/move with storage gae:root currentEntities.$(id)

execute if score @s monkeylib.entity.behaviorTime matches ..239 run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 1