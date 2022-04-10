# 
# input : vector2D v stored in calculator:vec[-1]
#         number n stored in calculator:vec[0][-1] with double number
#
# calculate : v * n
# output : push back of calculator:vec[-1] 
# 

data modify storage calculator register append from storage calculator vec[0][-1]

data modify storage calculator vec[0] append from storage calculator vec[-1][1]
data modify storage calculator vec[0] append from storage calculator vec[-1][0]

data modify storage calculator vec[-1] append value []

data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/mul
data modify storage calculator vec[-1] append from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

function math:compute/mul
data modify storage calculator vec[-1] append from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]