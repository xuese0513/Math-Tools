scoreboard players add #amount var 1
data modify storage decimal Modifiers append from storage templates Modifiers[0]
data modify storage decimal Modifiers[-1].Amount set from storage decimal stack[-1]
execute store result storage decimal Modifiers[-1].UUID[3] int 1 run scoreboard players get #amount var

data remove storage decimal stack[-1]

execute if data storage decimal stack[-1] run function math:operation/decimal/add_all_loop