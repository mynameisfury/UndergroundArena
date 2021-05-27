if(hasControl){
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
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



//if(keyboard_check_pressed(vk_left)){
//  if(dash){
//    hsp -= 80;
//  }
//  else{
//    dash = true
//    alarm[0] = 10
//  }
//}
//if(keyboard_check_pressed(vk_right)){
//  if(dash){
//    hsp += 80;
//  }
//  else{
//    dash = true
//    alarm[0] = 10
//  }
//}

if (onGround)
{
	if (keyUp){
	vsp = -jumpSpd;
	}
	if(keyboard_check_pressed(vk_left)){
  if(dash){
    hsp -= 80;
  }
  else{
    dash = true
    alarm[0] = 10
  }
}
if(keyboard_check_pressed(vk_right)){
  if(dash){
    hsp += 80;
  }
  else{
    dash = true
    alarm[0] = 10
  }
}
}

//


// Inherit the parent event
event_inherited();

