data merge storage monkeylib:temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage monkeylib:root uuid2string.in set from entity @s UUID

execute store result score 0= monkeylib.uuid2string store result score 1= monkeylib.uuid2string run data get storage monkeylib:root uuid2string.in[0]
execute store result storage monkeylib:temp 0 int 1 run scoreboard players operation 0= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 2= monkeylib.uuid2string run scoreboard players operation 1= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp 1 int 1 run scoreboard players operation 1= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 3= monkeylib.uuid2string run scoreboard players operation 2= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp 2 int 1 run scoreboard players operation 2= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result storage monkeylib:temp 3 int 1 run scoreboard players operation 3= monkeylib.uuid2string /= #256 monkeylib.temp1

execute store result score 0= monkeylib.uuid2string store result score 1= monkeylib.uuid2string run data get storage monkeylib:root uuid2string.in[1]
execute store result storage monkeylib:temp 4 int 1 run scoreboard players operation 0= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 2= monkeylib.uuid2string run scoreboard players operation 1= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp 5 int 1 run scoreboard players operation 1= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 3= monkeylib.uuid2string run scoreboard players operation 2= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp 6 int 1 run scoreboard players operation 2= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result storage monkeylib:temp 7 int 1 run scoreboard players operation 3= monkeylib.uuid2string /= #256 monkeylib.temp1

execute store result score 0= monkeylib.uuid2string store result score 1= monkeylib.uuid2string run data get storage monkeylib:root uuid2string.in[2]
execute store result storage monkeylib:temp 8 int 1 run scoreboard players operation 0= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 2= monkeylib.uuid2string run scoreboard players operation 1= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp 9 int 1 run scoreboard players operation 1= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 3= monkeylib.uuid2string run scoreboard players operation 2= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp a int 1 run scoreboard players operation 2= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result storage monkeylib:temp b int 1 run scoreboard players operation 3= monkeylib.uuid2string /= #256 monkeylib.temp1

execute store result score 0= monkeylib.uuid2string store result score 1= monkeylib.uuid2string run data get storage monkeylib:root uuid2string.in[3]
execute store result storage monkeylib:temp c int 1 run scoreboard players operation 0= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 2= monkeylib.uuid2string run scoreboard players operation 1= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp d int 1 run scoreboard players operation 1= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result score 3= monkeylib.uuid2string run scoreboard players operation 2= monkeylib.uuid2string /= #256 monkeylib.temp1
execute store result storage monkeylib:temp e int 1 run scoreboard players operation 2= monkeylib.uuid2string %= #256 monkeylib.temp1
execute store result storage monkeylib:temp f int 1 run scoreboard players operation 3= monkeylib.uuid2string /= #256 monkeylib.temp1

function monkeylib:uuid2string/hex_values with storage monkeylib:temp
function monkeylib:uuid2string/concatenate with storage monkeylib:temp