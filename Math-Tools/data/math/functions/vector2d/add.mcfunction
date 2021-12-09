# 
# input : pair of vector2D[a, b] stored in calculator:vectors[-2, -1] (no consume)
# calculate : a + b
# output : calculator:vectors[-1]
# 

data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,1]}]

summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute as @e[tag=decimal] run function math:operation/vector2d/add