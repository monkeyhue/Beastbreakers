execute store result storage gae:temp entityProcessor.aiState int 1 run scoreboard players get @s monkeylib.entity.AIState
execute store result storage gae:temp entityProcessor.id int 1 run scoreboard players get @s monkeylib.entity.id
execute on passengers run function gae:entity/hitbox

#// Entity List
execute if entity @s[tag=gae.e.tumbler] run function gae:entity/mobs/tumbler/main with storage gae:temp entityProcessor

data remove storage gae:temp entityProcessor