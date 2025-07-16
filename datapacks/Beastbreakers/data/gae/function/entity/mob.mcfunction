data remove storage gae:temp entityProcessor
execute store result storage gae:temp entityProcessor.aiState int 1 run scoreboard players get @s monkeylib.entity.AIState
execute store result storage gae:temp entityProcessor.id int 1 run scoreboard players get @s monkeylib.entity.id
execute on passengers run function gae:entity/hitbox

#// Entity List
execute if entity @s[tag=gae.e.tumbler] run return run function gae:entity/mobs/tumbler/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.chickendino] run return run function gae:entity/mobs/chickendino/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.arakno] run return run function gae:entity/mobs/arakno/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.araknofrog] run return run function gae:entity/mobs/araknofrog/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.noser] run return run function gae:entity/mobs/noser/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.bearger] run return run function gae:entity/mobs/bearger/main with storage gae:temp entityProcessor
#execute if entity @s[tag=gae.e.duneshark] run return run function gae:entity/mobs/duneshark/main with storage gae:temp entityProcessor