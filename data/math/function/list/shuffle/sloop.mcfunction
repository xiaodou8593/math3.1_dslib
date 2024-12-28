#math:list/shuffle/sloop

data modify storage math:io list prepend from storage math:io list[-1]
data remove storage math:io list[-1]
scoreboard players add sstemp_random int 1
execute if score sstemp_random int = ssloop int run function math:list/shuffle/swap_tail
execute if score sstemp_random int < ssloop int run function math:list/shuffle/sloop
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]