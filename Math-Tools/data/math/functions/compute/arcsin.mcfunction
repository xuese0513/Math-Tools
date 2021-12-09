# 
# input : double number stored in calculator:stack[-1]
# calculate : arcsin(x)
# output : calculator:stack[-1]
# 

data modify storage calculator stack insert -2 value 1.0
function math:compute/div
data modify storage calculator stack append from storage calculator stack[-1]
function math:compute/mul
data modify storage calculator stack append value 1.0
function math:compute/sub
function math:compute/sqrt
execute as @e[tag=gpoint] run function math:operation/compute/arcsin