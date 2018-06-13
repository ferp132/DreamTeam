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
	case PlayerState.HOVER:
	{
		sprite_index = SpriteHover;
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