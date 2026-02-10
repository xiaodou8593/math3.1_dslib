#math:world_bfs/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {produce_queue:[], death_queue:[], vis_table:{}, cur_iter:0, produce_rate:0, death_rate:0}

data modify storage math:io result.produce_queue set from storage math:io produce_queue
data modify storage math:io result.death_queue set from storage math:io death_queue
data modify storage math:io result.vis_table set from storage math:io vis_table
execute store result storage math:io result.cur_iter int 1 run scoreboard players get cur_iter int
execute store result storage math:io result.produce_rate int 1 run scoreboard players get produce_rate int
execute store result storage math:io result.death_rate int 1 run scoreboard players get death_rate int