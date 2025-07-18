execute if score @s monkeylib.entity.hurtTime matches ..0 run return run function monkeylib:entity/hitbox/unhurt with entity @s data.gae
execute if predicate monkeylib:entity/is_hurt run function monkeylib:entity/hitbox/attack with entity @s data.gae

execute if score @s monkeylib.entity.hurtTime matches 1.. run scoreboard players remove @s monkeylib.entity.hurtTime 1