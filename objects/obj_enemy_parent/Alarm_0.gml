if (instance_exists(obj_McOogle) && distance_to_object(obj_McOogle) < distance_to_player)
{
 target_x = obj_McOogle.x;
 target_y = obj_McOogle.y;
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;