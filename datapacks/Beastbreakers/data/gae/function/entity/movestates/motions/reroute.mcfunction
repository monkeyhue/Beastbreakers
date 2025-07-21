tag @s remove gae.stopMoving
execute if score @s monkeylib.entity.reposCooldown matches 1.. run return run scoreboard players remove @s monkeylib.entity.reposCooldown 1

execute unless score @s monkeylib.entity.reposCooldown matches 1.. run scoreboard players add @s monkeylib.entity.reposCooldown 5

function gae:entity/mobs/tumbler/actions/kill_nearest_target with storage gae:temp entityProcessor

data modify storage gae:temp wanderTarget.min set value 1
data modify storage gae:temp wanderTarget.max set value 4
execute store result score #temp monkeylib.temp1 run data get entity @s Pos[1]
scoreboard players add #temp monkeylib.temp1 5
execute store result storage gae:temp wanderTarget.under int 1.0 run scoreboard players get #temp monkeylib.temp1
$data modify storage gae:temp wanderTarget.id set value $(id)
execute positioned ^ ^ ^-5 summon area_effect_cloud run function gae:entity/mobs/generic/actions/find_wander_target_simple with storage gae:temp wanderTarget