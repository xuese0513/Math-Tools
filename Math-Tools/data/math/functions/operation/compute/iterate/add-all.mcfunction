data modify storage calculator Modifiers append from storage templates Modifiers[0]
data modify storage calculator Modifiers[-1].Amount set from storage calculator vec[0][-1]
execute store result storage calculator Modifiers[-1].UUID[3] int 1 run data get storage calculator vec[0]

data remove storage calculator vec[0][-1]

execute if data storage calculator vec[0][-1] run function math:operation/compute/iterate/add-all