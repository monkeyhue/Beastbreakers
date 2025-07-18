tellraw @s [{"text":"[Monkeylib]","color":"#653AA0","bold":true},{"text":" Welcome back! The following packs are installed:\n","color":"white","underlined":false,"bold":false},{"text":"------------------------------------------------","color":"white"}]

#// Monkey's Mutants
execute if score #monkeylib.pack.tta monkeylib.active matches 1.. run tellraw @s [{"text":"\ua000 ","font":"tta:tooltip"},{"translate":"tta.name","color":"#6F75DB","font":"minecraft:default"}]

tellraw @s {"text":" "}
tellraw @s {"text":"[Disable Login Message]","color":"gray","italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Click here to disable the login message\n","color":"white"},{"text":"/trigger monkeylib.doLoginMessage","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger monkeylib.doLoginMessage"}}
