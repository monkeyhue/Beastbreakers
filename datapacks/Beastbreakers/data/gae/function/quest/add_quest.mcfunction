function monkeylib:uuid2string/init
data modify storage gae:temp bounty.addData.uuid set from storage monkeylib:root uuid2string.out

#// This points to the totem type
data modify storage gae:temp bounty.addData.type set value "basic"

scoreboard players operation #gae.tempTime monkeylib.temp1 = #monkeylib.gametime monkeylib.time1
scoreboard players add #gae.tempTime monkeylib.temp1 200
execute store result storage gae:temp bounty.addData.endTime int 1.0 run scoreboard players get #gae.tempTime monkeylib.temp1

data modify storage gae:temp bounty.addData.reward set value "minecraft:gameplay/fishing/treasure"

function gae:quest/add/entry with storage gae:temp bounty.addData
data remove storage gae:temp bounty.addData