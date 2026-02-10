#math:world_bfs/cell/_new
# 使用数据模板生成实体对象
# 输入数据模板storage math:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["cell", "result"], CustomName:"world_bfs_cell"}
execute as @e[tag=result,limit=1] run function math:world_bfs/cell/set