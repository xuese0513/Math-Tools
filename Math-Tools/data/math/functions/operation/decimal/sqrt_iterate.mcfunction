# x(n+1) = 0.5*[x(n)+k/x(n)]
# debug : tellraw @a ["top : ",{"nbt":"stack[-1]","storage":"decimal"}]
data modify storage decimal stack append value 0.5
data modify storage decimal stack append from storage decimal stack[-2]
data modify storage decimal stack append from storage decimal variables[-1]
data modify storage decimal stack append from storage decimal stack[-2]
function math:decimal/div
function math:decimal/add
function math:decimal/mul

# remove x(n)
data remove storage decimal stack[-2]

scoreboard players remove #sqrt_times var 1
execute if score #sqrt_times var matches 1.. run function math:operation/decimal/sqrt_iterate