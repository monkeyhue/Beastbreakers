$rotate $(coreHitbox) facing $(targetX) $(targetY) $(targetZ)

#// Credit to Cloud Wolf for this line
$execute anchored eyes rotated as $(coreHitbox) positioned ^ ^ ^$(rotationSpeed) rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

$execute positioned ~ ~$(oY) ~ run tp @s ^ ^ ^$(moveSpeed)