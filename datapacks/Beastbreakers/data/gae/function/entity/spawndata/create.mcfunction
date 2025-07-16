tag @s add gae.spawnData
$data modify entity @s data set from storage gae:root currentEntities.$(id)
$scoreboard players set @s monkeylib.entity.id $(id)