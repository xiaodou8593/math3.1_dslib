#math:world_bfs/_join_cell
# 添加一个细胞模板
# 输入storage math:io input

data modify storage math:io produce_queue append from storage math:io input
data modify storage math:io xyz set from storage math:io input.position
function math:world_bfs/check_xyz with storage math:io {}