# 
# input : vector2D stored in calculator:vectors[-1]  (no consume)
# calculate : length of vector = sqrt(x^2+y^2)
# output : calculator:stack[-1]
# 

data modify storage calculator stack append from storage calculator vectors[-1][0]
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-1][1]
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
function math:compute/add
function math:compute/sqrt