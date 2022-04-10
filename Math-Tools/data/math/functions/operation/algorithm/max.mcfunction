# cmp
data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,1]}]
execute store result storage calculator Modifiers[1].Amount double 0.000000476837158203125 run data get storage calculator vec[0][-1] -2097152
data modify storage calculator Modifiers[0].Amount set from storage calculator vec[0][-2]
function math:operation/compute/evaluate/init

data modify entity @s Pos[1] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

# get maximum
execute if predicate math:is_negative run data remove storage calculator vec[0][-2]
execute unless predicate math:is_negative run data remove storage calculator vec[0][-1]