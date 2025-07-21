execute if entity @s[tag=gae.stopMoving] run function gae:entity/movestates/motions/reroute with storage gae:temp entityProcessor

execute store result score #gae.wallcheck.up monkeylib.temp1 run data get storage gae:temp currentEntity.properties.height
execute store result score #gae.wallcheck.down monkeylib.temp1 run data get storage gae:temp currentEntity.fallHeight
execute store result score #gae.wallcheck.left monkeylib.temp1 run data get storage gae:temp currentEntity.properties.width
execute store result score #gae.wallcheck.right monkeylib.temp1 run data get storage gae:temp currentEntity.properties.width

$execute positioned ^ ^ ^$(frontOffset) align y run function gae:entity/mobs/generic/actions/wall_detection/down
$execute positioned ^ ^$(stepHeight) ^$(frontOffset) align y run function gae:entity/mobs/generic/actions/wall_detection/up
$execute positioned ^ ^$(stepHeight) ^$(frontOffset) positioned ^-0.5 ^ ^ align y run function gae:entity/mobs/generic/actions/wall_detection/left
$execute positioned ^ ^$(stepHeight) ^$(frontOffset) positioned ^0.5 ^ ^ align y run function gae:entity/mobs/generic/actions/wall_detection/right

scoreboard players reset #gae.wallcheck.up
scoreboard players reset #gae.wallcheck.down
scoreboard players reset #gae.wallcheck.left
scoreboard players reset #gae.wallcheck.right
scoreboard players reset #gae.raycast
scoreboard players reset @s monkeylib.entity.wallCheck