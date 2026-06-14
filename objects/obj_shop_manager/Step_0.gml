// Move through shop items
if keyboard_check_pressed(vk_up)
{
    shop_selected--;
}

if keyboard_check_pressed(vk_down)
{
    shop_selected++;
}

shop_selected = clamp(
    shop_selected,
    0,
    array_length(shop_items) - 1
);


// Buy item
if keyboard_check_pressed(vk_space)
{
    var item_data = shop_items[shop_selected];

    
    var item_manager = instance_find(obj_item_manager, 0);

    if instance_exists(item_manager)
    {
        // money check
        if global.money >= item_data.price
        {
            // inventory check
            if array_length(item_manager.inv) < item_manager.inv_max
            {
                global.money -= item_data.price;

                array_push(
                    item_manager.inv,
                    item_data.item
                );
            }
        }
    }
}


// leave shop
if keyboard_check_pressed(vk_escape)
{
    // Don't create multiple warps
    if !instance_exists(obj_Warp)
    {
        var warp = instance_create_depth(0, 0, -999999, obj_Warp);

        // Send player to town
        warp.target_rm = rm_Town;

        // Position in front of Zeemart
        warp.target_x = 512;
        warp.target_y = 282;

        // Face downward after leaving
        warp.target_face = DOWN;
    }
}