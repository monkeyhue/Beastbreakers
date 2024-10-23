$data remove storage gae:root quests.$(uuid).$(type)

$execute unless score #monkeylib.gametime monkeylib.time1 matches ..$(time) run \
	return run say too late!

$tellraw @s [{"bold":true,"color":"gold","translate":"ui.gae.bounty_complete"},{"bold":false,"color":"white","translate":"ui.gae.bounty_rewards"},{"bold":false,"color":"#B3FF00","text":"$(xp) "},{"color":"#B3FF00", "translate":"ui.gae.xp"}]
$loot spawn ~ ~0.5 ~ loot $(reward)
$xp add @s $(xp) points