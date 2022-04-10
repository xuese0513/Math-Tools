data modify storage calculator vec[-2] append value []
data modify storage calculator vec[-2][-1] append from storage calculator vec[-1][0]
data remove storage calculator vec[-1][0]

execute if data storage calculator vec[-1][0] run function math:operation/algorithm/sort/split