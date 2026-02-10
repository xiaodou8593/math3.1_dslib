#math:world_bfs/cell/init
# 初始化cell模块

data modify storage math:io spawn_func set value ""
data modify storage math:io produce_func set value ""
data modify storage math:io death_func set value ""
data modify storage math:io cell_info set value {}

scoreboard objectives add generation dummy
scoreboard objectives add health dummy

function math:world_bfs/cell/_consts

function math:world_bfs/cell/_class