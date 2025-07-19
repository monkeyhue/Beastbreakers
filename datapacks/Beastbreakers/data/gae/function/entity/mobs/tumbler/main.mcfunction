$function gae:entity/mobs/tumbler/state/run with storage gae:root currentEntities.$(id)

execute unless score @s monkeylib.entity.AIState matches -1.. run function gae:entity/mobs/tumbler/init

#----- Tumbler State Machine -----
#
# States:
# 0: Walk
# 1: Idle Wander
# 2: Swim