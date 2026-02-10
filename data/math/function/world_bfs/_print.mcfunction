#math:world_bfs/_print
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
tellraw @a ["    ", "produce_queue: ", {"nbt":"produce_queue", "storage":"math:io"}, ","]
tellraw @a ["    ", "death_queue: ", {"nbt":"death_queue", "storage":"math:io"}, ","]
tellraw @a ["    ", "vis_table: ", {"nbt":"vis_table", "storage":"math:io"}, ","]
tellraw @a ["    ", "cur_iter: ", {"score":{"name":"cur_iter", "objective":"int"}}, ","]
tellraw @a ["    ", "produce_rate: ", {"score":{"name":"produce_rate", "objective":"int"}}, ","]
tellraw @a ["    ", "death_rate: ", {"score":{"name":"death_rate", "objective":"int"}}]
tellraw @a "}"