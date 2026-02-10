#math:world_bfs/_clear
# 清空world_bfs数据结构

data modify storage math:io produce_queue set value []
data modify storage math:io death_queue set value []
data modify storage math:io vis_table set value {}
scoreboard players set cur_iter int -1