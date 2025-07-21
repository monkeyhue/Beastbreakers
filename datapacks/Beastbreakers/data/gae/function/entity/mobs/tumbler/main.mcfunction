#// Init
execute unless score @s monkeylib.entity.AIState matches -1.. run function gae:entity/mobs/tumbler/init

#// Clone data
$data modify storage gae:temp currentEntity set from storage gae:root currentEntities.$(id)

#// Gaming
execute store result storage gae:temp currentEntity.aiState int 1 run scoreboard players get @s monkeylib.entity.AIState

function gae:entity/mobs/tumbler/state/run with storage gae:temp currentEntity

#// Hurt effects
execute if score @s monkeylib.entity.hurtTime matches 1.. run function gae:entity/mobs/tumbler/actions/hurt

#// Clean up
$data modify storage gae:root currentEntities.$(id) set from storage gae:temp currentEntity
data remove storage gae:temp currentEntity

#----- Tumbler State Machine -----
#
# States:
# 0: Walk
# 1: Idle Wander
# 2: Swim