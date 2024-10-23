#// Load stats
scoreboard objectives add gae.dmg.critChance dummy
scoreboard objectives add gae.dmg.critMult dummy
scoreboard objectives add gae.dmg.sharp dummy
scoreboard objectives add gae.dmg.serrated dummy
scoreboard objectives add gae.dmg.savage dummy
scoreboard objectives add gae.dmg.cursed dummy
scoreboard objectives add gae.dmg.magic dummy
scoreboard objectives add gae.dmg.insecticide dummy
scoreboard objectives add gae.dmg.fiery dummy
scoreboard objectives add gae.dmg.frigid dummy
scoreboard objectives add gae.dmg.salt dummy
scoreboard objectives add gae.dmg.shock dummy

#// Load other scores
scoreboard objectives add gae.completedQuests dummy

#// Call dependencies
function monkeylib:entity/load
function monkeylib:item/load

#// Tickly for pack
function gae:tick