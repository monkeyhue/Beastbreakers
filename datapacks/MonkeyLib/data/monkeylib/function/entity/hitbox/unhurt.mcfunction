data modify storage monkeylib:temp changeAnim.hurt set value -1
$execute as $(hitboxOwner) run function monkeylib:entity/objmc/hurt with storage monkeylib:temp changeAnim

scoreboard players reset @s monkeylib.entity.hurtTime