#math:world_bfs/_print_len
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
execute store result score sstemp_len int run data get storage math:io produce_queue
tellraw @a ["    ", "produce_queue: ", {"score":{"name":"sstemp_len","objective":"int"}}, ","]
execute store result score sstemp_len int run data get storage math:io death_queue
tellraw @a ["    ", "death_queue: ", {"score":{"name":"sstemp_len","objective":"int"}}, ","]
execute store result score sstemp_len int run data get storage math:io vis_table
tellraw @a ["    ", "vis_table: ", {"score":{"name":"sstemp_len","objective":"int"}}]
tellraw @a "}"