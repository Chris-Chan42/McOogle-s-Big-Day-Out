up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));
interactKeyPressed = keyboard_check_pressed(vk_space)

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if instance_exists(obj_pauser) || instance_exists(obj_Textbox)
{
xspd = 0;
yspd = 0;
}

//set sprite
mask_index = sprite[DOWN]
if yspd == 0	
{
if xspd > 0 {face = RIGHT}
if xspd < 0 {face = LEFT}
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN}
if yspd < 0 {face = UP}
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];

//collisions
if place_meeting(x + xspd, y, obj_Wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_Wall) == true
{
	yspd = 0;
}

if place_meeting(x + xspd, y, obj_npc) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_npc) == true
{
	yspd = 0;
}

x += xspd;
y += yspd;

//animate
if xspd == 0 && yspd == 0
	{
	image_index = 0;
	}
	
//depth
depth = -bbox_bottom;

//intereact with the push blocks
if interactKeyPressed == true
{
	//direction check
	var _checkDir = face * 90;
	//block check
	var _checkX = x + lengthdir_x(interactDist, _checkDir);
	var _checkY = y + lengthdir_y(interactDist, _checkDir);
	var _pushBlockInst = instance_place(_checkX,_checkY, obj_pushblock);
	//movement check
	if instance_exists(_pushBlockInst) && _pushBlockInst.sliding == false
	{
		_pushBlockInst.sliding = true;
		_pushBlockInst.faceDir = face;
	}
}

// Disable player in battle room
if (room == rm_battle)
{
    visible = false;
    xspd = 0;
    yspd = 0;
    exit;
}
else
{
    visible = true;
}
// Disable player in Zeemart
if room == rm_Zeemart
{
    visible = false;
}
else
{
    visible = true;
}

//health detection
if (hp <= 0)
{
	game_restart();
}