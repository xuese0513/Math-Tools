# 
# input : pair of double number[A, B] stored in calculator:vec[0][-2, -1]
# calculate : A + B
# output : calculator:vec[0][-1]
# 

data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,1]}]
data modify storage calculator Modifiers[1].Amount set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]
data modify storage calculator Modifiers[0].Amount set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

function math:operation/compute/evaluate/init