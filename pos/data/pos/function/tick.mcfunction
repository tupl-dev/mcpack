# show position
execute as @a store result score @s pos_x run data get entity @s Pos[0]
execute as @a store result score @s pos_y run data get entity @s Pos[1]
execute as @a store result score @s pos_z run data get entity @s Pos[2]

title @a[y_rotation=45..135] actionbar ["",{"text":"<"},{"score":{"name":"*","objective":"pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_z"},"color":"aqua"},{"text":"> "},{"text":"W","color":"aqua"}]
title @a[y_rotation=135..225] actionbar ["",{"text":"<"},{"score":{"name":"*","objective":"pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_z"},"color":"aqua"},{"text":"> "},{"text":"N","color":"aqua"}]
title @a[y_rotation=225..315] actionbar ["",{"text":"<"},{"score":{"name":"*","objective":"pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_z"},"color":"aqua"},{"text":"> "},{"text":"E","color":"aqua"}]
title @a[y_rotation=315..45] actionbar ["",{"text":"<"},{"score":{"name":"*","objective":"pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_z"},"color":"aqua"},{"text":"> "},{"text":"S","color":"aqua"}]

# show death position
execute as @a[scores={pos_dead_count=1..}] run tellraw @s ["", {"text":"You died at <"},{"score":{"name":"*","objective":"pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"*","objective":"pos_z"},"color":"aqua"},{"text":">"}]
scoreboard players reset @a pos_dead_count
