execute on passengers run scoreboard players reset @s
scoreboard players reset @s
execute on passengers if entity @s[type=slime] run data modify entity @s Size set value 0b
tp @s ~ -256 ~
execute on passengers run kill @s
kill @s

$data remove storage gae:root currentEntities.$(id)