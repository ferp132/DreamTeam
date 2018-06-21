image_xscale = MoveDir;

switch (State)
{
	case PlayerState.IDLE:
	{
		sprite_index = SpriteIdle;
		
		break;
	}
	case PlayerState.RUN:
	{
		sprite_index = SpriteRun;
		break;
	}
	case PlayerState.JUMP:
	{
		sprite_index = SpriteJump;
		break;
	}
	case PlayerState.FALL:
	{
		sprite_index = SpriteFall;
		break;
	}
	case PlayerState.STARTHOVER:
	{
		sprite_index = SpriteHover;
		if( image_index >= 1) State = PlayerState.HOVER;
		break;
	}
	case PlayerState.HOVER:
	{
		
		sprite_index = SpriteHover;
		if(image_index >= 18) image_index = 1;
		if(!HoverInput) State = PlayerState.ENDHOVER;
		
		break;
	}
	case PlayerState.ENDHOVER:
	{
		image_index = 18;
		sprite_index = SpriteHover;
		if(image_index >= image_number) State = PlayerState.FALL;
		break;
	}
	case PlayerState.ACTIVATE:
	{
		sprite_index = SpriteActivate;
		break;
	}
	case PlayerState.DEAD:
	{
		sprite_index = SpriteDead;
		break;
	}
}