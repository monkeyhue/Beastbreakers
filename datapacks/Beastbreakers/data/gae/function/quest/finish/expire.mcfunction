$data modify storage gae:temp bounty.completedQuest set from storage gae:root quests.$(uuid).$(type)
execute unless data storage gae:temp bounty.completedQuest run return run data remove storage gae:temp bounty.completedQuest
$data modify storage gae:temp bounty.completedQuest.type set value "$(type)"
$data modify storage gae:temp bounty.completedQuest.uuid set value "$(uuid)"

function gae:quest/finish/entry with storage gae:temp bounty.completedQuest
data remove storage gae:temp bounty.completedQuest