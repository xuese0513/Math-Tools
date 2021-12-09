data modify storage calculator vectors append value []
data modify storage calculator Modifiers[1].Amount set from storage calculator stack[-1]

data modify storage calculator Modifiers[0].Amount set from storage calculator vectors[-2][0]
function math:operation/vector/operate

data modify storage calculator Modifiers[0].Amount set from storage calculator vectors[-2][1]
function math:operation/vector/operate

kill @s