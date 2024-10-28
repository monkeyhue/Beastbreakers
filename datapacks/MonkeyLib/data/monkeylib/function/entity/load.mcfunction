#// General Entity Scores
scoreboard objectives add monkeylib.entity.AIState dummy
scoreboard objectives add monkeylib.entity.health dummy
scoreboard objectives add monkeylib.entity.maxHealth dummy
scoreboard objectives add monkeylib.entity.hurtTime dummy
scoreboard objectives add monkeylib.entity.damage dummy
scoreboard objectives add monkeylib.entity.id dummy
scoreboard objectives add monkeylib.entity.dmgFactor dummy
scoreboard objectives add monkeylib.entity.resFactor dummy
scoreboard objectives add monkeylib.entity.timeToDespawn dummy
scoreboard objectives add monkeylib.entity.animLength dummy
scoreboard objectives add monkeylib.entity.behaviorTime dummy
scoreboard objectives add monkeylib.entity.fxTime dummy
scoreboard objectives add monkeylib.entity.goalState dummy
scoreboard objectives add monkeylib.entity.coyoteTime dummy
scoreboard objectives add monkeylib.entity.fallingTime dummy
scoreboard objectives add monkeylib.entity.stopAction dummy
scoreboard objectives add monkeylib.entity.persistAction dummy

#// Register as downloaded
scoreboard players set #monkeylib.lib.entity monkeylib.active 1

#// Gamerules
scoreboard players set #monkeylib.gamerules.maxEntityFallSpeed monkeylib.active 400