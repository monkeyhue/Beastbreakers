#// Load stats
scoreboard objectives add gae.dmg.critChance dummy
scoreboard objectives add gae.dmg.critMult dummy
scoreboard objectives add gae.dmg.sharp dummy
scoreboard objectives add gae.dmg.crush dummy
scoreboard objectives add gae.dmg.tear dummy
scoreboard objectives add gae.dmg.fire dummy
scoreboard objectives add gae.dmg.ice dummy
scoreboard objectives add gae.dmg.plague dummy
scoreboard objectives add gae.dmg.storm dummy
scoreboard objectives add gae.entity.fireResist dummy
scoreboard objectives add gae.entity.iceResist dummy
scoreboard objectives add gae.entity.plagueResist dummy
scoreboard objectives add gae.entity.stormResist dummy
scoreboard objectives add gae.entity.resist dummy
scoreboard objectives add gae.entity.envResist dummy

#// Load other scores
scoreboard objectives add gae.completedQuests dummy

#// Call dependencies
function monkeylib:entity/load
function monkeylib:item/load

#// Tickly for pack
function gae:tick
function gae:tick_2s