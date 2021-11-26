data modify storage decimal Modifiers append from storage templates Modifiers[0]
data modify storage decimal Modifiers[-1].Amount set from storage decimal stack[-1]
execute store result storage decimal Modifiers[-1].UUID[3] int 1 run scoreboard players get #madd var

data remove storage decimal stack[-1]

scoreboard players remove #madd var 1
execute if score #madd var matches 1.. run function math:operation/decimal/multiadd_iterate