scoreboard players reset @s monkeylib.entity.hurtTime
playsound gae:entity.tumbler.hurt neutral @a
execute if score @s monkeylib.entity.health matches ..0 run function gae:entity/mobs/generic/die with storage gae:temp entityProcessor