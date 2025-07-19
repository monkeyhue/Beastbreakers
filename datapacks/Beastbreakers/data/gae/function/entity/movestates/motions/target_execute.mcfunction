$rotate $(coreHitbox) facing $(targetX) $(targetY) $(targetZ)

#// Credit to Cloud Wolf for this line
$execute anchored eyes rotated as $(coreHitbox) positioned ^ ^ ^$(rotationSpeed) rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

$execute unless score #entitySnap monkeylib.temp1 matches 1.. positioned ~ ~$(oY) ~ run tp @s ^ ^ ^$(moveSpeed)
scoreboard players reset #entitySnap monkeylib.temp1