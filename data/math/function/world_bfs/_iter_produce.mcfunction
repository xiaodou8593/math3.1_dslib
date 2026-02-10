#math:world_bfs/_iter_produce
# 迭代细胞繁殖
# 输出<res,int>: 繁殖了几个细胞
# 需要传入世界实体为执行者

# 弹出当前细胞模板
data modify storage math:io input set from storage math:io produce_queue[0]
data remove storage math:io produce_queue[0]
function math:world_bfs/cell/_proj

# 更新当前正在迭代的细胞世代
scoreboard players operation cur_iter int = generation int

scoreboard players set res int 0

# 访问繁殖位置
execute store result storage math:io xyz[0] double 1 run scoreboard players get x int
execute store result storage math:io xyz[1] double 1 run scoreboard players get y int
execute store result storage math:io xyz[2] double 1 run scoreboard players get z int
data modify entity @s Pos set from storage math:io xyz

# 调用繁殖函数
execute at @s run function math:world_bfs/cell/call_produce_func with storage math:io {}

# 活力值不足，直接进入等死队列
execute if score health int matches ..0 run return run function math:world_bfs/produce_exit

# 繁殖迭代
data modify storage math:io temp_info set from storage math:io cell_info
scoreboard players add generation int 1
scoreboard players remove health int 1

# x方向繁殖
execute store result storage math:io xyz[0] double 1 run scoreboard players add x int 1
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~1 ~ ~ run function math:world_bfs/produce_append
execute store result storage math:io xyz[0] double 1 run scoreboard players remove x int 2
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~-1 ~ ~ run function math:world_bfs/produce_append
execute store result storage math:io xyz[0] double 1 run scoreboard players add x int 1

# y方向繁殖
execute store result storage math:io xyz[1] double 1 run scoreboard players add y int 1
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~ ~1 ~ run function math:world_bfs/produce_append
execute store result storage math:io xyz[1] double 1 run scoreboard players remove y int 2
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~ ~-1 ~ run function math:world_bfs/produce_append
execute store result storage math:io xyz[1] double 1 run scoreboard players add y int 1

# z方向繁殖
execute store result storage math:io xyz[2] double 1 run scoreboard players add z int 1
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~ ~ ~1 run function math:world_bfs/produce_append
execute store result storage math:io xyz[2] double 1 run scoreboard players remove z int 2
execute store result score sres int run function math:world_bfs/check_xyz with storage math:io {}
execute if score sres int matches 1 at @s positioned ~ ~ ~-1 run function math:world_bfs/produce_append
execute store result storage math:io xyz[2] double 1 run scoreboard players add z int 1

# 进入等死队列
data modify storage math:io cell_info set from storage math:io temp_info
scoreboard players remove generation int 1
scoreboard players add health int 1
function math:world_bfs/produce_exit

# 区块安全
tp @s 0 0 0