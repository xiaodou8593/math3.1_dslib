#math:world_bfs/_store
# 临时对象赋值到实体对象
# 输入执行实体

data modify entity @s data.produce_queue set from storage math:io produce_queue
data modify entity @s data.death_queue set from storage math:io death_queue
data modify entity @s data.vis_table set from storage math:io vis_table
scoreboard players operation @s cur_iter = cur_iter int
scoreboard players operation @s produce_rate = produce_rate int
scoreboard players operation @s death_rate = death_rate int