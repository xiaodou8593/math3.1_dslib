#math:world_bfs/_get
# 实体对象赋值到临时对象
# 输入执行实体

data modify storage math:io produce_queue set from entity @s data.produce_queue
data modify storage math:io death_queue set from entity @s data.death_queue
data modify storage math:io vis_table set from entity @s data.vis_table
scoreboard players operation cur_iter int = @s cur_iter
scoreboard players operation produce_rate int = @s produce_rate
scoreboard players operation death_rate int = @s death_rate