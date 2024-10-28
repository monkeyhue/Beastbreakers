$execute positioned ~$(oX) ~$(oY) ~$(oZ) run tp @s ^ ^ ^$(move)
$execute unless block ~ ~-0.25 ~ #monkeylib:intangible run data modify storage gae:root currentEntities.$(id).fallSpeed set value 0
scoreboard players reset @s monkeylib.entity.persistAction