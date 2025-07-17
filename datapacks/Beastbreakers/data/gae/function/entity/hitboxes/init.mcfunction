data modify entity @s data.gae.hitboxOwner set from storage monkeylib:root uuid2string.out
tag @s remove gae.new
function monkeylib:uuid2string/init
function gae:entity/hitboxes/init_ping_owner with entity @s data.gae