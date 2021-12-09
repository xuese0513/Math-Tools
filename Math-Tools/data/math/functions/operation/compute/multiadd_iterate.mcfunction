data modify storage calculator Modifiers append from storage templates Modifiers[0]
data modify storage calculator Modifiers[-1].Amount set from storage calculator stack[-1]
execute store result storage calculator Modifiers[-1].UUID[3] int 1 run scoreboard players get #add_n var

data remove storage calculator stack[-1]

scoreboard players remove #add_n var 1
execute if score #add_n var matches 1.. run function math:operation/compute/multiadd_iterate