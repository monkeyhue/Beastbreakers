#// If the raycast ends, you're fine
execute if score #gae.raycast monkeylib.temp1 = #gae.wallcheck.left monkeylib.temp1 run return run scoreboard players reset #gae.raycast monkeylib.temp1

#// If there's a solid block, stop
execute if block ~ ~ ~ #monkeylib:solid run return run function gae:entity/mobs/generic/actions/wall_detection/stop

scoreboard players add #gae.raycast monkeylib.temp1 1
execute if score #gae.wallcheck.left monkeylib.temp1 matches -1.. positioned ^-0.5 ^ ^ run function gae:entity/mobs/generic/actions/wall_detection/left