if(place_meeting(x - 32, y, objCharacter) || place_meeting(x + 32, y, objCharacter))
{
	CoverHP -= other.BulletDamage;
	instance_destroy(other);
	instance_create_depth(x, y ,-1, objBulletSpark);
}
