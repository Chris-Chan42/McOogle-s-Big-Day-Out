// default closed
state = 0;

// open if paired timed button is active
if instance_exists(buttonObj)
{
    if buttonObj.state == 1
    {
        state = 1;
    }
}

// ALSO open if obj_button_stiffer is pressed
with (obj_button_stiff_1)
{
    if state == 1
    {
        other.state = 1;
    }
}

// closed
if state == 0
{
    mask_index = sprite_index;
}

// open
if state == 1
{
    mask_index = spr_nocollision;
}

image_index = state;