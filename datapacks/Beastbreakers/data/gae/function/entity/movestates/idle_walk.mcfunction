# Execute gravity
execute unless block ~ ~-0.1 ~ #monkeylib:intangible run return 0
$function gae:entity/movestates/motions/gravity with storage gae:root currentEntities.$(id)

data modify storage gae:temp movement.oX set value 0
$data modify storage gae:temp movement.oY set from storage gae:root currentEntities.$(id).fallSpeed
data modify storage gae:temp movement.oZ set value 0
data modify storage gae:temp movement.move set value 0

function gae:entity/movestates/motions/execute with storage gae:temp movement