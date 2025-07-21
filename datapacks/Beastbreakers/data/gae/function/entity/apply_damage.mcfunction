#// Health control
execute if score #temp monkeylib.temp1 matches ..0 run return 0

$execute as $(enemy) if score @s monkeylib.entity.health > @s monkeylib.entity.maxHealth run scoreboard players operation @s monkeylib.entity.health = @s monkeylib.entity.maxHealth
$scoreboard players operation $(enemy) monkeylib.entity.health -= #temp monkeylib.temp1

data remove storage monkeylib:temp hurt