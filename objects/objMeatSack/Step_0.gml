//movement
vsp = vsp + grv;

//horizontal collision
if (place_meeting(x + hsp,y,objWall))
{
	while (!place_meeting(x+sign(hsp),y,objWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

//vertical collision
if (place_meeting(x ,y + vsp,objWall))
{
	while (!place_meeting(x,y+sign(vsp),objWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp
