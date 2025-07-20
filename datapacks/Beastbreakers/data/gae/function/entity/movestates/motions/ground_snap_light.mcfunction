scoreboard players add #gae.raycast monkeylib.temp1 1

#// If there's a solid block here, end and don't complain
execute unless block ~ ~-1 ~ #monkeylib:intangible run tp @s ~ ~0.02 ~
execute unless block ~ ~-1 ~ #monkeylib:intangible run tag @s add gae.snapToGround
execute unless block ~ ~-1 ~ #monkeylib:intangible run return run scoreboard players reset #gae.raycast monkeylib.temp1

execute if score #gae.raycast monkeylib.temp1 matches 2.. run return run scoreboard players reset #gae.raycast monkeylib.temp1

execute positioned ~ ~-1 ~ run function gae:entity/movestates/motions/ground_snap_light