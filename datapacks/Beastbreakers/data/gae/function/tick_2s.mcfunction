#-- Tickly Functions ---
execute as @e[type=marker,tag=gae.spawnData] at @s run function gae:entity/spawndata/check_radius

schedule function gae:tick_2s 2s