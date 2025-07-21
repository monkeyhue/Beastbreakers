$function gae:entity/mobs/tumbler/state/run with storage gae:root currentEntities.$(id)

execute unless score @s monkeylib.entity.AIState matches -1.. run function gae:entity/mobs/tumbler/init

$execute store result storage gae:root currentEntities.$(id).aiState int 1 run scoreboard players get @s monkeylib.entity.AIState

#// Hurt effects
execute if score @s monkeylib.entity.hurtTime matches 1.. run function gae:entity/mobs/tumbler/actions/hurt

#----- Tumbler State Machine -----
#
# States:
# 0: Walk
# 1: Idle Wander
# 2: Swim