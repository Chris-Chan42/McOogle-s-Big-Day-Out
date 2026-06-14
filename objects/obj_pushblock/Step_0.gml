//-------------state of box-------------
//idle
if sliding == false
{
	startPointX = x;
	startPointY = y;
	
	xspd = 0;
	yspd = 0;
}

//get ground type
if place_meeting(x, y, obj_blockarea)
{
	pushblockArea = true;
} else {
	pushblockArea = false;
}

//is slippery 
if place_meeting(x, y, obj_blockmovement)
{
	slipping = true;
} else {
	slipping = false;
}

//sliding
if sliding == true
{
	//get direction
	var _realDir = faceDir * 90;
	
	//move direction
	var _targetXDist = lengthdir_x(gridSpace, _realDir);
	var _targetYDist = lengthdir_y(gridSpace, _realDir);
	targetX = startPointX + _targetXDist
	targetY = startPointY + _targetYDist
	
	//slipping till edge or wall
	if slipping == true
	{
		//reset targetX and targetY
		targetX = startPointX
		targetY = startPointY
		
		//check if space ahead is slippery and not a wall
		while place_meeting(targetX + _targetXDist, targetY + _targetYDist, obj_blockmovement)
		&& !place_meeting( targetX + _targetXDist, targetY + _targetYDist, obj_Wall)
		{
			targetX += _targetXDist;
			targetY += _targetYDist;
		}
	}
	
	//set speed
	var _targetDist = point_distance(x, y, targetX, targetY);
	var _finalSpd = min(movespd , _targetDist);
	xspd = lengthdir_x(_finalSpd, _realDir);
	yspd = lengthdir_y(_finalSpd, _realDir);
	
	//keep in blockarea
	if pushblockArea == true && !place_meeting(targetX, targetY, obj_blockarea)
	{
		xspd = 0;
		yspd = 0;
	}
	
	//collision
	if place_meeting(targetX,targetY, obj_Wall)
	{
		xspd = 0;
		yspd = 0;
	}
}

//move
x += xspd;
y += yspd;

//done sliding
if xspd == 0 && yspd == 0
{
	sliding = false;
}

//depth
depth = -bbox_bottom;