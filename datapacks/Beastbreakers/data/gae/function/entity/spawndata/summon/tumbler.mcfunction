summon item_display ~ -100 ~ {Tags:["monkeylib.entity","gae.e.mob","gae.entity","gae.e.tumbler","gae.new"],teleport_duration:2,shadow_radius:2f,transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:poisonous_potato",count:1,components:{"!minecraft:consumable":{},"minecraft:dyed_color":0,"minecraft:item_model":"gae:entity/tumbler/walk"}},Passengers:[{id:"minecraft:interaction",width:3f,height:3f,response:1b,Tags:["monkeylib.interaction"]},{id:"minecraft:slime",Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1024f,Size:5,Tags:["monkeylib.hitbox","gae.new","gae.hitbox.tumbler"],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:0.93}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}]}

$tp @n[type=item_display,tag=gae.new] ~ ~ ~ ~$(rotation) 0
scoreboard players set @n[distance=..1,type=item_display,tag=gae.new] monkeylib.entity.animLength 0
$scoreboard players set @n[distance=..1,type=item_display,tag=gae.new] monkeylib.entity.id $(id)
execute as @n[distance=..1,type=item_display,tag=gae.new] run function monkeylib:uuid2string/init
tag @n[distance=..1,type=item_display,tag=gae.new] remove gae.new

execute as @n[type=slime,tag=gae.hitbox.tumbler,tag=gae.new] run function gae:entity/hitboxes/init