// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FighterFunctions(){

}

function PlayerStateNeutral(){
//grounded actions
	var move = keyRight - keyLeft;
	if (onGround)
	{
		
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
	
	hsp = move * walksp;
	if (keyDown){
		crouched = true;
		move = 0;
		}

	if (upRight){
		vsp = -jumpSpd;
		while(!onGround){
			move = -1;		
			}
		}
	if (upLeft){
		vsp = -jumpSpd;
		while(!onGround){
				move = -1;		
			}
		}
	else if (keyUp){
		vsp = -jumpSpd;
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
	if(keyboard_check_pressed(vk_left)){
		if(ableToDash){
		hsp -= dashDistance;
		}
		else{
		ableToDash = true
		alarm[0] = 10
		}
 
  
		}
	}
}
function PlayerStateDash(){
	hsp -= dashDistance;
}

function PlayerStateHitstun(){

}
function PlayerStateBlockstun(){

}
function PlayerStateAttacking(objMove){
 sprite_index = objMove.characterSprite;
	  var hitbox = new objHitbox();
	  with (hitbox){
		  sprite_index = objMove.hitboxSprite;
	  }
	  instance_create_layer(x,y, "Hitboxes", hitbox); 
}
function PlayerStateBlocking(){

}
function PlayerStateInAir(){

}
function PlayerStateInvincible(){

}
function PlayerStateArmored(){

}