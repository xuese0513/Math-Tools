# 
# input : double number stored in calculator:stack[-1]
# calculate : sqrt(x)
# output : calculator:stack[-1]
# 

scoreboard players operation #sqrt_times var = #sqrt_iters const

data modify storage calculator register append from storage calculator stack[-1]

function math:operation/compute/sqrt_iterate

data remove storage calculator register[-1]