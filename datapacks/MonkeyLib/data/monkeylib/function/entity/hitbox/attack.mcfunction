execute store result score @s monkeylib.entity.health run data get entity @s Health
data modify entity @s Health set value 1024f
scoreboard players set #monkeylib.temp monkeylib.temp1 1024
scoreboard players operation #monkeylib.temp monkeylib.temp1 -= @s monkeylib.entity.health

data modify storage monkeylib:temp changeAnim.hurt set value 1
$execute as $(hitboxOwner) run function monkeylib:entity/objmc/hurt with storage monkeylib:temp changeAnim