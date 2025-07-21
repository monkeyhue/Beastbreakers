data merge entity @s {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0.5f,RadiusPerTick:0f,Duration:120}
$spreadplayers ~ ~ $(min) $(max) under $(under) false @s

data modify storage gae:temp currentEntity.movement.targetX set from entity @s Pos[0]
data modify storage gae:temp currentEntity.movement.targetY set from entity @s Pos[1]
data modify storage gae:temp currentEntity.movement.targetZ set from entity @s Pos[2]

$scoreboard players set @s monkeylib.entity.id $(id)

data remove storage gae:temp wanderTarget