# 
# input : calculator:vec[-1]
# output : merge sort the vector of calculator:vec[-1]
# 

data modify storage calculator vec insert -2 value []
function math:operation/algorithm/sort/split
data remove storage calculator vec[-1]
execute as @e[tag=gpoint,limit=1] run function math:operation/algorithm/sort/recur
data modify storage calculator vec insert -2 from storage calculator vec[-1][0]
data remove storage calculator vec[-1]