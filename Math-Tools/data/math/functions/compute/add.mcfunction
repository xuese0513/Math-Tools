# 
# input : pair of double number[a, b] stored in calculator:stack[-2, -1]
# calculate : a + b
# output : calculator:stack[-1]
# 

data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,1]}]
data modify storage calculator Modifiers[1].Amount set from storage calculator stack[-1]
data remove storage calculator stack[-1]
data modify storage calculator Modifiers[0].Amount set from storage calculator stack[-1]
data remove storage calculator stack[-1]

summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute as @e[tag=decimal] run function math:operation/compute/operate