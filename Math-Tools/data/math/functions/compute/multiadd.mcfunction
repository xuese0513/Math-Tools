# 
# input : numbers stored in calculator:stack[-1] with double number,
#         add_n stored in scoreboard #add_a var
#
# calculate : summation of add_a times of stack
# output : calculator:stack[-1]
# 

data remove storage calculator Modifiers
summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

execute if score #add_n var matches 1.. run function math:operation/compute/multiadd_iterate

execute as @e[tag=decimal] run function math:operation/compute/operate