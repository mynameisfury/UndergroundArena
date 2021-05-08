//horizontal collision
if (place_meeting(x + hsp,y,objBoundary))
{
	while (!place_meeting(x+sign(hsp),y,objWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
  
x += hsp

//vertical collision
if (place_meeting(x, y + vsp,objWall))
{
	while (!place_meeting(x,y+sign(vsp),objWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;