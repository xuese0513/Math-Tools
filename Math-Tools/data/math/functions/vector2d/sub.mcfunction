# 
# input : pair of vector2D[A, B] stored in calculator:vec[-2, -1]
# calculate : A - B
# output : calculator:vec[-1]
# 

data modify storage calculator vec[0] append from storage calculator vec[-2][1]
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
data modify storage calculator vec[0] append from storage calculator vec[-2][0]
data modify storage calculator vec[0] append from storage calculator vec[-1][0]

data modify storage calculator vec[-1] append value []
function math:compute/sub
data modify storage calculator vec[-1] append from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]
function math:compute/sub
data modify storage calculator vec[-1] append from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]