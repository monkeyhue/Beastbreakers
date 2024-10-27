$execute if block ~ ~-0.25 ~ #monkeylib:intangible run function gae:entity/mobs/generic/actions/execute/falling with storage gae:root currentEntities.$(id)
$execute unless block ~ ~0.05 ~ #monkeylib:intangible_no_fluids run function gae:entity/mobs/generic/actions/execute/rising with storage gae:root currentEntities.$(id)



data modify storage gae:temp movement.oX set value 0
$data modify storage gae:temp movement.oY set from storage gae:root currentEntities.$(id).fallSpeed
data modify storage gae:temp movement.oZ set value 0
$data modify storage gae:temp movement.move set from storage gae:root currentEntities.$(id).moveSpeed
$data modify storage gae:temp movement.id set from storage gae:root currentEntities.$(id).id

$execute if data storage gae:root currentEntities.$(id){target:"null"} run return run function gae:entity/mobs/generic/actions/execute/movement with storage gae:temp movement
function gae:entity/mobs/generic/actions/execute/target_movement