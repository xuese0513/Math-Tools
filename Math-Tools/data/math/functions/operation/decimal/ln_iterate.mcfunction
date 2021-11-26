data modify storage decimal stack append from storage decimal variables[-2]
data modify storage decimal stack append from storage decimal variables[-1]
function math:decimal/mul
data modify storage decimal variables[-2] set from storage decimal stack[-1]
data modify storage decimal stack append value 0.0
execute store result storage decimal stack[-1] double 1 run scoreboard players get #log_div var
function math:decimal/div
function math:decimal/add

scoreboard players add #log_div var 2
scoreboard players remove #log_times var 1
execute if score #log_times var matches 1.. run function math:operation/decimal/ln_iterate