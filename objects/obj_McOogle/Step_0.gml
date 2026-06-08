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

up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));

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

if place_meeting(x + xspd, y, obj_speakblock) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_speakblock) == true
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

//health detection
if (hp <= 0)
{
	game_restart();
}