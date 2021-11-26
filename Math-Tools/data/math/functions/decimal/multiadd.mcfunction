# 
# input : numbers were stored in decimal:stack[-1] with double number,
#         madd was stored in scoreboard #madd var
#
# calculate : summation of madd times of stack
# output : decimal:stack[-1]
# 

data remove storage decimal Modifiers
summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute if score #madd var matches 1.. run function math:operation/decimal/multiadd_iterate

execute as @e[tag=decimal] run function math:operation/decimal/operate