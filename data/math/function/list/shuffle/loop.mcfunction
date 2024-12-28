#math:shuffle/loop

# 迭代到当前索引
scoreboard players remove ssloop int 1

# 随机数迭代
scoreboard players operation rand_seed int *= 1103515245 int
scoreboard players add rand_seed int 12345
scoreboard players operation sstemp_random int = rand_seed int
scoreboard players operation sstemp_random int %= sstemp_max int
scoreboard players operation sstemp_random int /= 16 int

# 交换数据位置
data modify storage math:io temp_swap set from storage math:io list[-1]
execute if score sstemp_random int = ssloop int run function math:list/shuffle/swap_tail
execute if score sstemp_random int < ssloop int run function math:list/shuffle/sloop
data modify storage math:io list[-1] set from storage math:io stemp_swap

data modify storage math:io list prepend from storage math:io list[-1]
data remove storage math:io list[-1]
scoreboard players remove sstemp_max int 16
execute if score ssloop int matches 2.. run function math:list/shuffle/loop