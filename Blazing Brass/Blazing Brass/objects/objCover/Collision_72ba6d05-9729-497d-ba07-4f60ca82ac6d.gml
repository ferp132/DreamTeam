var BehindCover = collision_rectangle(x-64, y, x+64, y, objCharacter, false, true)

if(BehindCover != noone && BehindCover != other.MyOwner)
{
	CoverHP -= other.BulletDamage;
	instance_destroy(other);
	instance_create_depth(x, y ,-1, objBulletSpark);
}