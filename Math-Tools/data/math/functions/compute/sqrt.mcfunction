# 
# input : double number stored in calculator:vec[0][-1]
# calculate : sqrt(x)
# output : calculator:vec[0][-1]
# 

scoreboard players operation #sqrt_times var = #sqrt_iters const

data modify storage calculator vec[0] append from storage calculator vec[0][-1]
data modify storage calculator vec[0] append value 0.5
function math:compute/mul
data modify storage calculator register append from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

function math:operation/compute/iterate/sqrt

data remove storage calculator register[-1]