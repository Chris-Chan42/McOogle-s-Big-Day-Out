//get selected item
selected_item = -1
for(var i = 0; i < array_length(inv); i++)
{
	var _xx = screen_bord;
	var _yy = screen_bord + sep*i;
	
	
	if mouse_x > _xx && mouse_x < _xx+8 && mouse_y > _yy && mouse_y + 8
	{
	selected_item = i;
	}
	
}

if selected_item != -1
{
	//use item
	if mouse_check_button_pressed(mb_left)
	{
	inv[selected_item].effect();
	}
	
	//drop item
	if mouse_check_button_pressed(mb_right) && inv[selected_item].can_drop == true
	{
	array_delete(inv, selected_item, 1);
	}

}