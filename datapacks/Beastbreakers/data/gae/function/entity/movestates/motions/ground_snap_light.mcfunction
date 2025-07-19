#// If there's a solid block here, end and don't complain
execute unless block ~ ~-0.05 ~ #monkeylib:intangible run tp @s ~ ~ ~
execute unless block ~ ~-0.05 ~ #monkeylib:intangible run scoreboard players set #entitySnap monkeylib.temp1 1
execute unless block ~ ~-0.05 ~ #monkeylib:intangible run return run scoreboard players reset #gae.raycast monkeylib.temp1

execute if score #gae.raycast monkeylib.temp1 matches 6.. run return run scoreboard players reset #gae.raycast monkeylib.temp1

scoreboard players add #gae.raycast monkeylib.temp1 1
execute positioned ~ ~-0.05 ~ run function gae:entity/movestates/motions/ground_snap_light