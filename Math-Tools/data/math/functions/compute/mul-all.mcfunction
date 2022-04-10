# 
# input : double numbers stored in storage calculator:vec[-1]
# calculate : production of calculator:vec[-1]
# output : storage calculator:vec[0][-1]
# 

data modify storage calculator Modifiers set value [{Name:"add", Amount:1.0d, Operation:0, UUID:[I;0,0,0,0]}]
execute as @e[tag=gpoint] run function math:operation/compute/iterate/mul-all

function math:operation/compute/evaluate/init