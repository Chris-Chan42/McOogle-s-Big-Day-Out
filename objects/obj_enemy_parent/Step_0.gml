var dx = target_x - x;
var dy = target_y - y;

var dist = point_distance(x, y, target_x, target_y);

var xspd = 0;
var yspd = 0;

if (dist > 1)
{
    xspd = (dx / dist) * move_spd;
    yspd = (dy / dist) * move_spd;
}

// Wall collisions (same idea as McOogle)
if place_meeting(x + xspd, y, obj_Wall)
{
    xspd = 0;
}

if place_meeting(x, y + yspd, obj_Wall)
{
    yspd = 0;
}

// Move enemy
x += xspd;
y += yspd;

// Death check
if (hp <= 0)
{
    // Quests Checklist
	
	//Basement peebs
    if (object_index == obj_peebs && room == rm_Basement)
    {
        // Check if this is the last Peeb
        if (instance_number(obj_peebs) <= 1)
        {
            global.peebs_defeated = true;
        }
    }

    instance_destroy();
}