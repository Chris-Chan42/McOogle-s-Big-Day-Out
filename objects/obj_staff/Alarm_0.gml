// Wait for dialogue to finish
if (instance_exists(obj_Textbox))
{
    alarm[0] = 1;
    exit;
}

with (obj_McOogle)
{
    sprite[RIGHT] = spr_McOogleStaff_Right_1;
    sprite[UP]    = spr_McOogleStaff_Up_1;
    sprite[LEFT]  = spr_McOogleStaff_Left_1;
    sprite[DOWN]  = spr_McOogleStaff_Down_1;

    sprite_index = sprite[face];
}

instance_destroy();