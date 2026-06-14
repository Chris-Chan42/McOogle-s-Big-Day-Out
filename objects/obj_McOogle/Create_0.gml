xspd = 0;
yspd = 0;

move_spd = 1;
hp = 10;
hp_total = hp;
damage = 1;
spell = 0;

interactDist = 4;

sprite[RIGHT] = spr_McOogle_Right
sprite[UP] = spr_McOogle_Up
sprite[LEFT] = spr_McOogle_Left
sprite[DOWN] = spr_McOogle_Down
face = DOWN;

level = 1;
xp = 0;
xp_required = 100;

function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_required)
	{
		level++;
		xp-= xp_required;
		xp_required *= 1.4;
		
		hp_total +=5;
		hp = hp_total;
		damage += 0.8;
	}
}
