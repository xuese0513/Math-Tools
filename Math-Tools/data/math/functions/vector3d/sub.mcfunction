# 
# input : pair of vector3D[A, B] stored in calculator:vec[-2, -1]
# calculate : A - B
# output : calculator:vec[-1]
# 

data modify storage calculator vec[0] append from storage calculator vec[-2][0]
data modify storage calculator vec[0] append from storage calculator vec[-1][0]
data modify storage calculator vec[0] append from storage calculator vec[-2][1]
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
data modify storage calculator vec[0] append from storage calculator vec[-2][2]
data modify storage calculator vec[0] append from storage calculator vec[-1][2]
data remove storage calculator vec[-1]

function math:compute/sub
data modify storage calculator vec[-1][2] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]
function math:compute/sub
data modify storage calculator vec[-1][1] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]
function math:compute/sub
data modify storage calculator vec[-1][0] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]