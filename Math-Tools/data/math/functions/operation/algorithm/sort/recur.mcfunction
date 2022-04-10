data modify storage calculator vec insert -2 value [[]]
function math:operation/algorithm/sort/merge
data modify storage calculator vec[-2][-1] set from storage calculator vec[-1][0]
data remove storage calculator vec[-1]
execute unless data storage calculator vec[-1][-1][0] run data remove storage calculator vec[-1][-1]

execute store result score #combines var run data get storage calculator vec[-1]

execute if score #combines var matches 2.. run function math:operation/algorithm/sort/recur