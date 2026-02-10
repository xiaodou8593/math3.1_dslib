#math:world_bfs/_iter_death
# 迭代细胞死亡
# 输出<res,int>: 是否清除了1个细胞
# 需要传入世界实体为执行者

# 获取当前死亡细胞
data modify storage math:io input set from storage math:io death_queue[0]
function math:world_bfs/cell/_proj
scoreboard players operation temp_cur int = cur_iter int
scoreboard players remove temp_cur int 1

# 还不能死亡
execute if score generation int >= temp_cur int run return run scoreboard players set res int 0

# 弹出细胞
data remove storage math:io death_queue[0]
scoreboard players set res int 1
# 访问死亡位置
execute store result storage math:io xyz[0] double 1 run scoreboard players get x int
execute store result storage math:io xyz[1] double 1 run scoreboard players get y int
execute store result storage math:io xyz[2] double 1 run scoreboard players get z int
data modify entity @s Pos set from storage math:io xyz
# 调用死亡函数
execute at @s run function math:world_bfs/cell/call_death_func with storage math:io {}
# 释放标记
function math:world_bfs/free_xyz with storage math:io {}