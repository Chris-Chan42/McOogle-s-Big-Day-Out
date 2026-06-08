if place_meeting(x, y, obj_McOogle) && !instance_exists(obj_Warp)
	{
	var inst = instance_create_depth(0, 0, -999999, obj_Warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
	}