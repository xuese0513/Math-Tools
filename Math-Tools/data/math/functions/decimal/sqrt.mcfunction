# 
# input : double number stored in decimal:stack[-1]
# calculate : sqrt(x)
# output : decimal:stack[-1]
# 

scoreboard players operation #sqrt_times var = #sqrt_iters const

data modify storage decimal variables append from storage decimal stack[-1]

function math:operation/decimal/sqrt_iterate

data remove storage decimal variables[-1]