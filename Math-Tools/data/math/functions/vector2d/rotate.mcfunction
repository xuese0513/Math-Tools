# 
# input : pair of vector2D[a, b] stored in calculator:vectors[-1. -2]
#         number n stored in calculator:stack[-1] with double number
#
# calculate : rotated a by n degrees at b
# output : push back of calculator:vectors[-1] 
# 

function math:vector2d/sub

data modify storage calculator register append from storage calculator stack[-1]
function math:compute/cos
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul

data modify storage calculator stack append from storage calculator register[-1]
function math:compute/sin
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
function math:compute/sub


data modify storage calculator stack append from storage calculator register[-1]
function math:compute/sin
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul

data modify storage calculator stack append from storage calculator register[-1]
function math:compute/cos
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
function math:compute/add

data modify storage calculator vectors[-1][1] set from storage calculator stack[-1]
data remove storage calculator stack[-1]

data modify storage calculator vectors[-1][0] set from storage calculator stack[-1]
data remove storage calculator stack[-1]

function math:vector2d/add

data remove storage calculator vectors[-2]