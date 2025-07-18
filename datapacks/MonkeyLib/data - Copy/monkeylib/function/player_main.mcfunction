execute if score @s monkeylib.login matches 1.. run function monkeylib:login/main
execute if score @s monkeylib.doLoginMessage matches 1.. run function monkeylib:login/pref

#// Item Library
execute if score #monkeylib.lib.item monkeylib.active matches 1.. run function monkeylib:item/tick