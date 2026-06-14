if distance_to_object(obj_McOogle) < 20
{
    if !instance_exists(obj_Textbox)
    {
        if position_meeting(x, y, id)
        && keyboard_check_pressed(vk_space)
        {
            create_textbox("THE_STICK");

            instance_destroy();
        }
    }
}