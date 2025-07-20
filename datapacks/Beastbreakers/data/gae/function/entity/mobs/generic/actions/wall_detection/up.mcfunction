#// If the raycast ends, you're fine
execute if score #gae.raycast monkeylib.temp2 = #gae.wallcheck.up monkeylib.temp1 run return run scoreboard players reset #gae.raycast monkeylib.temp2

#// If there's a solid block, stop
execute if block ~ ~ ~ #monkeylib:solid run return run function gae:entity/mobs/generic/actions/wall_detection/stop

scoreboard players add #gae.raycast monkeylib.temp2 1
execute if score #gae.wallcheck.up monkeylib.temp1 matches -1.. positioned ~ ~1 ~ run function gae:entity/mobs/generic/actions/wall_detection/up