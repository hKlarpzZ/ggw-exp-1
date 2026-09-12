function mechanics:slots/init_slots
function mechanics:slots/process_slots_loop
function mechanics:inventory_slots/init_slots
function mechanics:inventory_slots/process_slots_loop

execute as @e[nbt={Item:{components:{"minecraft:custom_data":{"locker": 1b}}}}] at @s run function mechanics:locker/kill_locker_entity
execute as @a if predicate mechanics:holding_locker run item replace entity @s player.cursor with minecraft:air

execute as @e[type=item] unless predicate mechanics:max_stack_size_set run item modify entity @s container.* mechanics:set_max_stack_size
