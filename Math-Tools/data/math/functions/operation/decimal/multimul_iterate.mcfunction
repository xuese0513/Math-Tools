# short from math:decimal/sub_1
data modify entity @s Pos[1] set from storage decimal stack[-1]
execute positioned as @s run tp @s ~ ~-1 ~

data modify storage decimal Modifiers append from storage templates Modifiers[2]
data modify storage decimal Modifiers[-1].Amount set from entity @s Pos[1]
execute store result storage decimal Modifiers[-1].UUID[3] int 1 run scoreboard players get #mmul var

data remove storage decimal stack[-1]

scoreboard players remove #mmul var 1
execute if score #mmul var matches 1.. run function math:operation/decimal/multimul_iterate