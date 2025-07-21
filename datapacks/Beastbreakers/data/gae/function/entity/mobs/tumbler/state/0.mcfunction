$execute unless score @s monkeylib.entity.AIInit matches 0 run function gae:entity/mobs/tumbler/state/init/$(aiState) with storage gae:temp currentEntity

scoreboard players add @s monkeylib.entity.behaviorTime 1

function gae:entity/movestates/idle_stationary with storage gae:temp currentEntity

execute if score @s monkeylib.entity.behaviorTime matches ..1 run return 0
execute if block ~ ~-1 ~ #monkeylib:intangible run return 0
execute if entity @p[distance=..50] run scoreboard players set @s monkeylib.entity.AIState 1