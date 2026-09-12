## fix to drop placed item in locked slot
# dropping item from reserved enderchest slot first to skip override
execute as @a unless predicate mechanics:empty_reserved_slot at @s run function mechanics:item_drop
$execute as @a run item replace entity @s enderchest.26 from entity @s inventory.$(slot)
execute as @a unless predicate mechanics:slot_empty at @s run function mechanics:item_drop
execute as @a run item replace entity @s enderchest.26 with minecraft:air

## setup locked slot
$item replace entity @a inventory.$(slot) with minecraft:command_block[minecraft:item_model="minecraft:white_stained_glass_pane"]
$item modify entity @a inventory.$(slot) mechanics:locker