# 
# input : pair of vector3D[a, b] stored in calculator:vectors[-2, -1] (no consume)
# calculate : a · b
# output : calculator:stack[-1]
# 

data modify storage calculator stack append from storage calculator vectors[-2][0]
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-2][1]
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-2][2]
data modify storage calculator stack append from storage calculator vectors[-1][2]
function math:compute/mul
scoreboard players set #add_n var 2
function math:compute/multiadd