#math:world_bfs/produce_append
# math:world_bfs/_iter_produce调用

scoreboard players add res int 1

# 调用生成函数
function math:world_bfs/cell/call_spawn_func with storage math:io {}

function math:world_bfs/cell/_model
data modify storage math:io produce_queue append from storage math:io result