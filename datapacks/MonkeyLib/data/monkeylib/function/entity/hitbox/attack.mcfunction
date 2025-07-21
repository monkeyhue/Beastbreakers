execute store result score @s monkeylib.entity.health run data get entity @s Health
data modify entity @s Health set value 1024f
scoreboard players set #temp monkeylib.temp1 1024
scoreboard players operation #temp monkeylib.temp1 -= @s monkeylib.entity.health

$data modify storage monkeylib:temp hurt.enemy set value "$(hitboxOwner)"
execute on attacker run function gae:entity/apply_damage with storage monkeylib:temp hurt

data modify storage monkeylib:temp changeAnim.hurt set value 1
$execute as $(hitboxOwner) run function monkeylib:entity/objmc/hurt with storage monkeylib:temp changeAnim

scoreboard players set @s monkeylib.entity.hurtTime 9
scoreboard players reset @s monkeylib.entity.health
scoreboard players reset #temp monkeylib.temp1