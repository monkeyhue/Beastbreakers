scoreboard objectives add monkeylib.death minecraft.custom:minecraft.deaths
scoreboard objectives add monkeylib.active dummy
scoreboard objectives add monkeylib.temp1 dummy
scoreboard objectives add monkeylib.temp2 dummy
scoreboard objectives add monkeylib.temp3 dummy
data modify storage monkeylib:root empty.object set value {}
data modify storage monkeylib:root empty.string set value ''
data modify storage monkeylib:root empty.list set value []

#// UUID to String converter
scoreboard objectives add monkeylib.uuid2string dummy
data modify storage monkeylib:root uuid2string.hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]

#// Login is bundled with main
scoreboard objectives add monkeylib.login minecraft.custom:minecraft.leave_game
scoreboard objectives add monkeylib.doLoginMessage trigger "Login Message"

#// Time is bundled with main
scoreboard objectives add monkeylib.time1 dummy
scoreboard objectives add monkeylib.time2 dummy
scoreboard objectives add monkeylib.time3 dummy
scoreboard objectives add monkeylib.time4 dummy
scoreboard objectives add monkeylib.time5 dummy
scoreboard objectives add monkeylib.time6 dummy
scoreboard objectives add monkeylib.time7 dummy
scoreboard objectives add monkeylib.time8 dummy
scoreboard objectives add monkeylib.time9 dummy
execute store result score #monkeylib.gametime monkeylib.time1 run time query gametime

#// Constants is bundled with main
scoreboard players set #-1 monkeylib.temp1 -1
scoreboard players set #0 monkeylib.temp1 0
scoreboard players set #1 monkeylib.temp1 1
scoreboard players set #2 monkeylib.temp1 2
scoreboard players set #3 monkeylib.temp1 3
scoreboard players set #4 monkeylib.temp1 4
scoreboard players set #5 monkeylib.temp1 5
scoreboard players set #8 monkeylib.temp1 8
scoreboard players set #10 monkeylib.temp1 10
scoreboard players set #64 monkeylib.temp1 64
scoreboard players set #100 monkeylib.temp1 100
scoreboard players set #256 monkeylib.temp1 256
scoreboard players set #1024 monkeylib.temp1 1024
scoreboard players set #24000 monkeylib.temp1 24000

#// Register as downloaded
scoreboard players set #monkeylib.lib monkeylib.active 1
scoreboard players set #monkeylib.lib.login monkeylib.active 1

#// Tickly for all modules
function monkeylib:tick

#// Send that reload message
execute as @a unless score @s monkeylib.login matches 1.. run function monkeylib:load_msg