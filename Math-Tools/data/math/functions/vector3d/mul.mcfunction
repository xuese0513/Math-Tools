# 
# input : vector3D v stored in calculator:vectors[-1]
#         number n stored in calculator:stack[-1] with double number
#
# calculate : v * n
# output : push back of calculator:vectors[-1] 
# 

data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"multiply_base", Amount:0.0d, Operation:1, UUID:[I;1,0,0,0]},{Name:"offset",Amount:-1.0d,Operation:1,UUID:[I;1,0,0,-1]}]

summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute as @e[tag=decimal] run function math:operation/vector3d/mul