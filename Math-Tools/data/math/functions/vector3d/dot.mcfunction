# 
# input : pair of vector3D[A, B] stored in calculator:vec[-2, -1] (no consume)
# calculate : A · B
# output : calculator:vec[0][-1]
# 

data modify storage calculator vec[0] append from storage calculator vec[-2][0]
data modify storage calculator vec[0] append from storage calculator vec[-1][0]
function math:compute/mul
data modify storage calculator vec[0] append from storage calculator vec[-2][1]
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
function math:compute/mul
data modify storage calculator vec[0] append from storage calculator vec[-2][2]
data modify storage calculator vec[0] append from storage calculator vec[-1][2]
function math:compute/mul
function math:compute/add
function math:compute/add