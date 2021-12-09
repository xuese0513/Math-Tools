scoreboard players add #amount var 1
# short from math:compute/sub_1
data modify entity @s Pos[1] set from storage calculator stack[-1]
execute positioned as @s run tp @s ~ ~-1 ~

data modify storage calculator Modifiers append from storage templates Modifiers[2]
data modify storage calculator Modifiers[-1].Amount set from entity @s Pos[1]
execute store result storage calculator Modifiers[-1].UUID[3] int 1 run scoreboard players get #amount var

data remove storage calculator stack[-1]

execute if data storage calculator stack[-1] run function math:operation/compute/mul_all_loop