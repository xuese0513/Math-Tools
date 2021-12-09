# 
# input : pair of vector2D[a, b] stored in calculator:vectors[-2, -1] (no consume)
# calculate : a · b
# output : calculator:stack[-1]
# 

data modify storage calculator stack append from storage calculator vectors[-2][0]
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-2][1]
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
function math:compute/add