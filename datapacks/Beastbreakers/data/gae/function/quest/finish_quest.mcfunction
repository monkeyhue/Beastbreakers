function monkeylib:uuid2string/init
data modify storage gae:temp bounty.finishData.uuid set from storage monkeylib:root uuid2string.out

data modify storage gae:temp bounty.finishData.type set value "basic"

function gae:quest/finish/get_data with storage gae:temp bounty.finishData
data remove storage gae:temp bounty.finishData