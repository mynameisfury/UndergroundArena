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
//if (!crouched){
//	sprite_index = spIdle1;
//}
	
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

/// @function                 PlayerStateAttacking(attack);
/// @param {objMove}  attack  The attack to be done
/// @description              Dictates player behavior during the attacking state
function PlayerStateAttacking(attack){
	sprite_index = attack.characterSprite;
	attack.ThrowMove(x,y);
 
	//var hitbox = new objHitbox(attack.hitboxSprite);
	//instance_create_layer(x,y, "Hitboxes", hitbox); 
	
	//hasControl = false;
	//sprite_index = spFanThrow;
	//var lockedFor = 0;
	//lockedFor += spFanThrow.image_number;
	//lockedFor--;
	
	//if(lockedFor = 0){
	//	hasControl = true;
	//	PLAYERSTATE = PlayerStateNeutral();
	//}
}
function PlayerStateBlocking(){

}
function PlayerStateInAir(){

}
function PlayerStateInvincible(){

}
function PlayerStateArmored(){ 

}