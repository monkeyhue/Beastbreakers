$function gae:entity/mobs/tumbler/state/run with storage gae:root currentEntities.$(id)

execute unless score @s monkeylib.entity.AIState matches -1.. run function gae:entity/mobs/tumbler/init

#----- Tumbler State Machine -----
#
# States:
# 0: Walk
# 1: Idle Wander
# 2: Idle Deco 1
# 3: Idle Deco 2
# 4: Get Into Roll
# 5: Rolling
# 6: Get Out of Roll
# 7: 