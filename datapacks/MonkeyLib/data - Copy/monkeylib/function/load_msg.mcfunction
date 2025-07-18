tellraw @s [{"text":"[Monkeylib]","color":"#653AA0","bold":true},{"text":" Reload complete! The following packs are installed:\n","color":"white","underlined":false,"bold":false},{"text":"------------------------------------------------","color":"white"}]

#// Monkey's Mutants
execute if score #monkeylib.pack.tta monkeylib.active matches 1.. run tellraw @s [{"text":"\ua000 ","font":"tta:tooltip"},{"translate":"tta.name","color":"#6F75DB","font":"minecraft:default"}]

#// Creature Feature
execute if score #monkeylib.pack.gae monkeylib.active matches 1.. run tellraw @s [{"text":"\ua000 ","font":"gae:tooltip"},{"translate":"gae.name","color":"#6F75DB","font":"minecraft:default"}]