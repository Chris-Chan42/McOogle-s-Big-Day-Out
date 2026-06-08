sprite_index = item.sprite;

if place_meeting(x, y, obj_McOogle)
{
    if item_add(item) == true
    {
        // Save collected item location
        array_push(global.collected_items,
        {
            room : room,
            x : x,
            y : y
        });

        instance_destroy();
    }
}