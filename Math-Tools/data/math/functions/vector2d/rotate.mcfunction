# 
# input : pair of vector2D[A, B] stored in calculator:vec[-2, -1]
#         number n stored in calculator:vec[0][-1] with double number
#
# calculate : rotated B by n degrees at A
# output : push back of calculator:vec[-1] 
# 

function math:vector2d/sub

data modify storage calculator register append from storage calculator vec[0][-1]
function math:compute/cos
data modify storage calculator vec[0] append from storage calculator vec[-1][0]
function math:compute/mul

data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/sin
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
function math:compute/mul
function math:compute/sub


data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/sin
data modify storage calculator vec[0] append from storage calculator vec[-1][0]
function math:compute/mul

data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/cos
data modify storage calculator vec[0] append from storage calculator vec[-1][1]
function math:compute/mul
function math:compute/add

data modify storage calculator vec[-1][1] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

data modify storage calculator vec[-1][0] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

function math:vector2d/add

data remove storage calculator vec[-2]