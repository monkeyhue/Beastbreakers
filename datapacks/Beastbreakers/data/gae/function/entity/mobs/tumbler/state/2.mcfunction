$execute unless score @s monkeylib.entity.AIState matches 2 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:root currentEntities.$(id)

$function gae:entity/movestates/swim_generic with storage gae:root currentEntities.$(id)

execute if block ~ ~ ~ #monkeylib:fluids run return 0
$data modify storage gae:root currentEntities.$(id).aiState set value 1
