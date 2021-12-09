# 
# input : numbers stored in calculator:stack[-1] with double number,
#         mul_n stored in scoreboard #mul_n var
#
# calculate : summation of mul_n times of stack
# output : calculator:stack[-1]
# 

data remove storage calculator Modifiers
summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:1.0d}]}

execute if score #mul_n var matches 1.. as @e[tag=gpoint] run function math:operation/compute/multimul_iterate

execute as @e[tag=decimal] run function math:operation/compute/operate