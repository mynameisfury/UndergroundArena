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


if (inputBuffer == 0){
	buttonPressed = false;
}
if (keyLeft){
	lastButtonPressed = keyLeft;
	buttonPressed = true;
	if (keyboard_check_released(vk_left)){
	inputBuffer = 10;
	inputBuffer--;
	}
	buttonPressed = true;
	inputBuffer = 10;
	inputBuffer--;
}

if (keyRight){
	lastButtonPressed = keyRight;
	buttonPressed = true;
	inputBuffer = 10;
	inputBuffer--;
}


var move = keyRight - keyLeft;
hsp = move * walksp;
vsp = vsp + grv;

//timer for input buffers. timer could count up and if the same button is pressed within that time then it comes out as a dash?


if (keyDown){
	crouched = true;
}

if (buttonPressed && lastButtonPressed == keyLeft){
	if (keyboard_check_pressed(vk_left)){
	hsp -= 40;
	}
}

if (place_meeting(x,y+1,objBoundary)) and (keyUp)
{
	vsp = -jumpSpd;
}

//


// Inherit the parent event
event_inherited();

