$execute unless score @s monkeylib.entity.AIInit matches 1 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:temp currentEntity

scoreboard players add @s monkeylib.entity.behaviorTime 1

function gae:entity/movestates/walk_to_point with storage gae:temp currentEntity

$execute if entity @n[type=area_effect_cloud,distance=..1,scores={monkeylib.entity.id=$(id)}] run function gae:entity/mobs/tumbler/actions/stop_walking with storage gae:temp entityProcessor

#// Sounds
scoreboard players add @s monkeylib.entity.sfxTime1 1
execute if score @s monkeylib.entity.sfxTime1 matches 400.. run function gae:entity/mobs/tumbler/sounds/ambient

scoreboard players add @s monkeylib.entity.sfxTime2 1
execute if score @s monkeylib.entity.sfxTime2 matches 15.. run function gae:entity/mobs/tumbler/sounds/step

#// Behavior End
execute if block ~ ~ ~ #monkeylib:fluids if block ~ ~-1 ~ #monkeylib:intangible run scoreboard players set @s monkeylib.entity.AIState 2
execute if score @s monkeylib.entity.behaviorTime matches ..200 run return 0
scoreboard players set @s monkeylib.entity.AIState 0