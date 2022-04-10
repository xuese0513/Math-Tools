# 
# input : vector3D stored in calculator:compounds[-1]  (no consume)
# calculate : square of length of vector = x^2+y^2+z^2
# output : calculator:vec[0][-1]
# 

data modify storage calculator vec[0] append from storage calculator vec[-1][0]
data modify storage calculator vec[0] append from storage calculator vec[-1][0]
function math:compute/mul
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
function math:compute/mul
data modify storage calculator vec[0] append from storage calculator vec[-1][2]
data modify storage calculator vec[0] append from storage calculator vec[-1][2]
function math:compute/mul
function math:compute/add
function math:compute/add