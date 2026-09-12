data modify storage slots:temp slot set from storage current_inventory_slots:data list[0]

function mechanics:inventory_slots/setup_slot with storage slots:temp

data remove storage current_inventory_slots:data list[0]

function mechanics:inventory_slots/process_slots_loop