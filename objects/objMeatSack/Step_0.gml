//movement
vsp = vsp + grv;

//horizontal collision
if (place_meeting(x + hsp,y,objBoundary))
{
	while (!place_meeting(x+sign(hsp),y,objBoundary))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

//vertical collision
if (place_meeting(x ,y + vsp,objBoundary))
{
	while (!place_meeting(x,y+sign(vsp),objBoundary))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp
