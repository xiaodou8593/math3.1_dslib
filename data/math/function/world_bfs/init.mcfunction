#math:world_bfs/init
# 初始化world_bfs模块

data modify storage math:io produce_queue set value []
data modify storage math:io death_queue set value []
data modify storage math:io vis_table set value {}

scoreboard objectives add cur_iter dummy
scoreboard objectives add produce_rate dummy
scoreboard objectives add death_rate dummy

function math:world_bfs/_consts

function math:world_bfs/_class