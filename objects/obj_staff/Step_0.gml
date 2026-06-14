// Wait until the staff dialogue has been shown
if (!instance_exists(obj_Textbox))
{
    if (distance_to_object(obj_McOogle) < 20)
    {
        if (keyboard_check_pressed(vk_space))
        {
            create_textbox("staff");

            alarm[0] = 1;
        }
    }
}