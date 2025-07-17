$spreadplayers ~ ~ $(min) $(max) under $(under) false @s
$data modify storage gae:root currentEntities.$(id).wander_target set from entity @s Pos
kill @s

data remove storage gae:temp wanderTarget