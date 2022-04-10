# 
# input : double number stored in calculator:vec[0][-1]
# calculate : arcsin(x)
# output : calculator:vec[0][-1]
# 

data modify storage calculator vec[0] insert -2 value 1.0
function math:compute/div
data modify storage calculator vec[0] append from storage calculator vec[0][-1]
function math:compute/mul
data modify storage calculator vec[0] append value 1.0
function math:compute/sub
function math:compute/sqrt
execute as @e[tag=gpoint] run function math:operation/compute/arcsin