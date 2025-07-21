$execute unless score @s monkeylib.entity.AIInit matches 2 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:temp currentEntity

function gae:entity/movestates/swim_generic with storage gae:temp currentEntity

execute if block ~ ~ ~ #monkeylib:fluids if block ~ ~-1 ~ #monkeylib:intangible run return 0
execute unless block ~ ~1 ~ #monkeylib:fluids run scoreboard players set @s monkeylib.entity.AIState 1
