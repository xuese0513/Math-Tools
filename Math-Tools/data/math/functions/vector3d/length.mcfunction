# 
# input : vector3D stored in calculator:vectors[-1]  (no consume)
# calculate : length of vector = sqrt(x^2+y^2+z^2)
# output : calculator:stack[-1]
# 

data modify storage calculator stack append from storage calculator vectors[-1][0]
data modify storage calculator stack append from storage calculator vectors[-1][0]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-1][1]
data modify storage calculator stack append from storage calculator vectors[-1][1]
function math:compute/mul
data modify storage calculator stack append from storage calculator vectors[-1][2]
data modify storage calculator stack append from storage calculator vectors[-1][2]
function math:compute/mul
scoreboard players set #add_n var 2
function math:compute/multiadd
function math:compute/sqrt