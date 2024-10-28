$execute if block ~ ~-0.15 ~ #monkeylib:intangible if block ^ ^-0.15 ^$(detectRadius) #monkeylib:intangible if block ^ ^-0.15 ^-1 #monkeylib:intangible if block ^ ^$(stepHeight) ^1 #monkeylib:intangible run function gae:entity/mobs/generic/actions/execute/falling with storage gae:root currentEntities.$(id)
$execute unless block ^ ^0.05 ^$(detectRadius) #monkeylib:intangible_no_fluids run function gae:entity/mobs/generic/actions/execute/rising with storage gae:root currentEntities.$(id)
$execute unless block ~ ~ ~ #monkeylib:intangible_no_fluids run function gae:entity/mobs/generic/actions/execute/rising_stationary with storage gae:root currentEntities.$(id)

$execute unless score @s monkeylib.entity.persistAction matches 1.. unless block ^ ^1 ^$(detectRadius) #monkeylib:intangible_no_fluids unless block ^ ^$(stepHeight) ^$(detectRadius) #monkeylib:intangible_no_fluids run function $(namespace):entity/mobs/$(type)/actions/hit_wall with storage gae:root currentEntities.$(id)
$execute unless score @s monkeylib.entity.stopAction matches 1.. unless score @s monkeylib.entity.persistAction matches 1.. if block ^ ^-$(fallHeight) ^1 #monkeylib:intangible_no_fluids if block ^ ^-1 ^1 #monkeylib:intangible_no_fluids if block ^ ^-2 ^1 #monkeylib:intangible_no_fluids unless block ~ ~-0.15 ~ #monkeylib:intangible_no_fluids run function $(namespace):entity/mobs/$(type)/actions/hit_ledge with storage gae:root currentEntities.$(id)

execute if score @s monkeylib.entity.stopAction matches 1.. run return run function gae:entity/mobs/generic/actions/execute/stop

data modify storage gae:temp movement.oX set value 0
$execute if block ~ ~ ~ #monkeylib:intangible unless block ~ ~-0.15 ~ #monkeylib:intangible run data modify storage gae:root currentEntities.$(id).fallSpeed set value 0d
$data modify storage gae:temp movement.oY set from storage gae:root currentEntities.$(id).fallSpeed
data modify storage gae:temp movement.oZ set value 0
$data modify storage gae:temp movement.move set from storage gae:root currentEntities.$(id).moveSpeed
$data modify storage gae:temp movement.id set from storage gae:root currentEntities.$(id).id

function gae:entity/mobs/generic/actions/execute/movement with storage gae:temp movement