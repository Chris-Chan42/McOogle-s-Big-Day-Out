// Get camera position
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

for(var i = 0; i < array_length(inv); i++)
{
	var _xx = cam_x + screen_bord;
    var _yy = cam_y + screen_bord;
	var _sep = sep;
	var _col = c_white;
	
	//icon
	draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i)

	//"select"
	if selected_item == i {_col	= c_yellow}
	draw_set_colour(_col)
	
	//name
	draw_text(_xx + 16, _yy + _sep*i, inv[i].name);
	
	//description
	if selected_item == i {
	draw_text_ext(_xx, _yy + _sep*array_length(inv), inv[i].description, 12, 80)
	}
	
draw_set_colour(c_white)
}