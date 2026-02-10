#math:world_bfs/_zero
# 把临时对象的全部数据置0

data modify storage math:io produce_queue set value []
data modify storage math:io death_queue set value []
data modify storage math:io vis_table set value {}
scoreboard players set cur_iter int 0
scoreboard players set produce_rate int 0
scoreboard players set death_rate int 0