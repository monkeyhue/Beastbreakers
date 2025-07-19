particle flame

#// If there's a solid block here, end and don't complain
execute unless block ~ ~ ~ #monkeylib:intangible run return run scoreboard players reset #gae.raycast monkeylib.temp1

#// If score is greater than safe fall distance, don't pass this point (set to 5 for all mobs for now)
execute if score #gae.raycast monkeylib.temp1 = #gae.raycastLimit monkeylib.temp1 run return run function gae:entity/mobs/generic/actions/wall_detection/stop

scoreboard players add #gae.raycast monkeylib.temp1 1
execute positioned ~ ~1 ~ run function gae:entity/mobs/generic/actions/wall_detection/up