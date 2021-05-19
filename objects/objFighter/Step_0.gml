if(hasControl){
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
keyDash = keyboard_check(vk_space)
}
else
{
	keyUp = 0;
	keyRight = 0;
	keyLeft = 0;
	keyDown = 0
}


var move = keyRight - keyLeft;
hsp = move * walksp;
vsp = vsp + grv;



if (keyDown){
	crouched = true;
}
if (keyLeft && dashBuffer == 0){
	dashBuffer = 8;
	dashBuffer--;
	if(dashBuffer > 0 && keyDash){
		hsp -= 40;
	}
	
}
if (place_meeting(x,y+1,objBoundary)) and (keyUp)
{
	vsp = -jumpSpd;
}

// Inherit the parent event
event_inherited();

