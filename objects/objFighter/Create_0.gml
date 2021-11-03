enum PLAYERSTATE{
	Neutral, 
	Hitstun,
	Blockstun,
	Attacking,
	Blocking,
	InAir,
	Invincible,
	Armored,
	Dashing
}
state = PLAYERSTATE.Neutral;

var activeMove = pointer_null;
mediumHit = new objMove(6,2,3,8,3,60,true,spLightPunchHitbox,spFanThrow)