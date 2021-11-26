# x(n+1) = [2-kx(n)]x(n)

data modify storage decimal stack append value 2.0
data modify storage decimal stack append from storage decimal stack[-2]
data modify storage decimal stack append from storage decimal variables[-1]
function math:decimal/mul
function math:decimal/sub
function math:decimal/mul

scoreboard players remove #div_times var 1
execute if score #div_times var matches 1.. run function math:operation/decimal/div_iterate