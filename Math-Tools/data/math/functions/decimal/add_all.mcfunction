# 
# input : double numbers stored in storage decimal:stack
# calculate : summation of decimal:stack
# output : storage decimal:stack[-1]
# 

scoreboard players set #amount var 0
data remove storage decimal Modifiers
summon armor_stand 0.0 0.0 0.0 {Invulnerable:1,NoGravity:1,Marker:1,Tags:["decimal"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d}]}

function math:operation/decimal/add_all_loop

execute as @e[tag=decimal] run function math:operation/decimal/operate