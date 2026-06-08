item = global.item_list.burger

if !variable_global_exists("collected_items")
{
    global.collected_items = [];
}

// Check if this exact item was collected
for (var i = 0; i < array_length(global.collected_items); i++)
{
    var item_data = global.collected_items[i];

    if (
        item_data.room == room &&
        item_data.x == x &&
        item_data.y == y
    )
    {
        instance_destroy();
        exit;
    }
}