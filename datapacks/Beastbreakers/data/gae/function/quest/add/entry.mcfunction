$data modify storage gae:root quests.$(uuid).$(type) set value {time:$(endTime),objectives:[],complete:0b,reward:"$(reward)",xp:100}
$say quest added to player $(uuid)