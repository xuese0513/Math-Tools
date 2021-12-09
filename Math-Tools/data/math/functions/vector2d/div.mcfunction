# 
# input : vector2D v stored in calculator:vectors[-1] (no consume)
#         number n stored in calculator:stack[-1] with double number
#
# calculate : v / n
# output : push back of calculator:vectors[-1] 
# 

data modify storage calculator register append from storage calculator stack[-1]


data modify storage calculator stack insert -2 from storage calculator vectors[-1][0]
function math:compute/div

data modify storage calculator stack append from storage calculator vectors[-1][1]
data modify storage calculator stack append from storage calculator register[-1]
function math:compute/div

data modify storage calculator vectors append from storage templates Vector2D

data modify storage calculator vectors[-1][1] set from storage calculator stack[-1]
data remove storage calculator stack[-1]
data modify storage calculator vectors[-1][0] set from storage calculator stack[-1]
data remove storage calculator stack[-1]