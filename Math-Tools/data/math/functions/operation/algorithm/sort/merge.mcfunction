# cmp
data modify storage calculator Modifiers set value [{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,1]}]
execute store result storage calculator Modifiers[1].Amount double 0.000000476837158203125 run data get storage calculator vec[-1][1][0] -2097152
data modify storage calculator Modifiers[0].Amount set from storage calculator vec[-1][0][0]
function math:operation/compute/evaluate/init

data modify entity @s Pos[1] set from storage calculator vec[0][-1]
data remove storage calculator vec[0][-1]

# choose the minimum from vec[-1][0] and vec[-1][1]
execute if predicate math:is_negative run data modify storage calculator vec[-2][-1] append from storage calculator vec[-1][0][0]
execute if predicate math:is_negative run data remove storage calculator vec[-1][0][0]
execute unless predicate math:is_negative run data modify storage calculator vec[-2][-1] append from storage calculator vec[-1][1][0]
execute unless predicate math:is_negative run data remove storage calculator vec[-1][1][0]

# if any vec[-1][0] or vec[-1][1] is empty
execute unless data storage calculator vec[-1][0][0] run function math:operation/algorithm/sort/move_right
execute unless data storage calculator vec[-1][1][0] run function math:operation/algorithm/sort/move_left

execute if data storage calculator vec[-1][1] run function math:operation/algorithm/sort/merge