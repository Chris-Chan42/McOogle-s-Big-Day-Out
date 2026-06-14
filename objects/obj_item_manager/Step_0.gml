var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

selected_item = -1;

for (var i = 0; i < array_length(inv); i++)
{
    var _xx = cam_x + screen_bord;
    var _yy = cam_y + (screen_bord + sep * i) -10;

    if (mouse_x > _xx && mouse_x < _xx + 16 &&
        mouse_y > _yy && mouse_y < _yy + 16)
    {
        selected_item = i;
    }
}
// Use item
if (selected_item != -1)
{
    if (mouse_check_button_pressed(mb_left))
    {
        inv[selected_item].effect();
    }
}