## fix to drop placed item in locked slot
# dropping item from reserved enderchest slot first to skip override
execute as @a unless predicate mechanics:empty_reserved_slot at @s run function mechanics:item_drop
$execute as @a run item replace entity @s enderchest.26 from entity @s hotbar.$(slot)
execute as @a unless predicate mechanics:slot_empty at @s run function mechanics:item_drop
execute as @a run item replace entity @s enderchest.26 with minecraft:air

## setup locked slot
$item replace entity @a hotbar.$(slot) with minecraft:command_block[minecraft:item_model="minecraft:iron_bars"]
$item modify entity @a hotbar.$(slot) mechanics:locker