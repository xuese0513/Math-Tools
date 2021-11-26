# 
# input : float number stored in decimal:stack[-1]
# calculate : arcsin(x)
# output : decimal:stack[-1]
# 

data modify storage decimal stack insert -2 value 1.0
function math:decimal/div
data modify storage decimal stack append from storage decimal stack[-1]
function math:decimal/mul
data modify storage decimal stack append value 1.0
function math:decimal/sub
function math:decimal/sqrt
execute as @e[tag=gpoint] run function math:operation/decimal/arcsin