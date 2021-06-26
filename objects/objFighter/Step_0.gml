 if(hasControl){
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
downForward = keyboard_check(vk_down) && keyboard_check(vk_right);
upForward = keyboard_check_pressed(vk_up) && keyboard_check(vk_right);
downBack = keyboard_check(vk_down) && keyboard_check(vk_left);
upBack = keyboard_check_pressed(vk_up) && keyboard_check(vk_left);




//keyDash = keyboard_check(vk_space)
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

//timer for input buffers. timer could count up and if the same button is pressed within that time then it comes out as a dash?


if (keyDown){
	crouched = true;
}

if (!keyDown){
	crouched = false;
}
if (crouched){
	sprite_index = spCrouch;
	hsp = 0;
	//objFighter.y = 0;

}
if (!crouched){
	sprite_index = spIdle1;
}


if (onGround)
{
	if (upForward){
		vsp = -jumpSpd;
		while(!onGround){
			move = 1
		}
	}
	if (keyUp){
	vsp = -jumpSpd;
	}
	if(keyboard_check_pressed(vk_left)){
  if(ableToDash){
    hsp -= dashDistance;
  }
  else{
    ableToDash = true
    alarm[0] = 10
  }
}
if(keyboard_check_pressed(vk_right)){
	  if(ableToDash){
	    hsp += dashDistance;
	  }
	  else{
	    ableToDash = true
	    alarm[0] = 10
	  }
	}
}

//


// Inherit the parent event
event_inherited();

