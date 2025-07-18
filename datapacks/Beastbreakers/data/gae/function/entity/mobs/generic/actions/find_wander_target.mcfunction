$spreadplayers ~ ~ $(min) $(max) under $(under) false @s
$data modify storage gae:root currentEntities.$(id).movement.targetX set from entity @s Pos[0]
$data modify storage gae:root currentEntities.$(id).movement.targetY set from entity @s Pos[1]
$data modify storage gae:root currentEntities.$(id).movement.targetZ set from entity @s Pos[2]
kill @s

data remove storage gae:temp wanderTarget