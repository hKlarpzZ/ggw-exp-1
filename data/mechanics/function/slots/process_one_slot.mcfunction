data modify storage slots:temp slot set from storage current_hotbar_slots:data list[0]

function mechanics:slots/setup_slot with storage slots:temp

data remove storage current_hotbar_slots:data list[0]

function mechanics:slots/process_slots_loop