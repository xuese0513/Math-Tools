# 
# input : pair of double number[a, b] stored in decimal:stack[-2, -1]
# calculate : a * b
# output : decimal:stack[-1] and decimal:value
# 

data modify storage decimal Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"multiply_base", Amount:0.0d, Operation:1, UUID:[I;1,0,0,0]},{Name:"offset",Amount:-1.0d,Operation:1,UUID:[I;1,0,0,-1]}]
data modify storage decimal Modifiers[1].Amount set from storage decimal stack[-1]
data remove storage decimal stack[-1]
data modify storage decimal Modifiers[0].Amount set from storage decimal stack[-1]
data remove storage decimal stack[-1]

summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute as @e[tag=decimal] run function math:operation/decimal/operate