if place_meeting(x, y, obj_pushblock) || place_meeting(x, y, obj_McOogle)
{
	state = 1;
} else {
	state = 0;
}

//show button pressed
image_index = state;