summon minecraft:item ~ ~.3 ~ {Item:{id:"minecraft:paper"}, PickupDelay:30s, Tags:["need_to_rewrite"]}
item replace entity @e[tag=need_to_rewrite, sort=nearest, limit=1] container.0 from entity @p enderchest.26
tag @e[tag=need_to_rewrite, sort=nearest, limit=1] remove need_to_rewrite