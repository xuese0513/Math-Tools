# short from math:compute/sub_1
data modify entity @s Pos[1] set from storage calculator vec[0][-1]
execute positioned as @s run tp @s ~ ~-1 ~

data modify storage calculator Modifiers append from storage templates Modifiers[2]
data modify storage calculator Modifiers[-1].Amount set from entity @s Pos[1]
execute store result storage calculator Modifiers[-1].UUID[3] int 1 run data get storage calculator vec[0]

data remove storage calculator vec[0][-1]

execute if data storage calculator vec[0][-1] run function math:operation/compute/iterate/mul-all