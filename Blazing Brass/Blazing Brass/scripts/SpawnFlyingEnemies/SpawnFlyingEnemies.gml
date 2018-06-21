if objBoss.LastAction != 1{
if instance_number(objFlyingEnemy) < 16
{
    tar_x = argument0;
    tar_y = argument1;
    tar_dir = argument2;
    tar_nodes = argument3;
    tar_arc = argument4;
    tar_parent = argument5;
    
    with (instance_create_layer(objBoss.x, objBoss.y + 50, "Instances",objFlyingEnemy))
    {
        p = other.tar_parent;
        line_arc = p.tar_arc;
        line_dir = p.tar_dir+line_arc;
        length = 20;
        x_offset = lengthdir_x(length,line_dir);
        y_offset = lengthdir_y(length,line_dir);
        first_node = false;
        last_node = false;
        
        if (p == objBoss.id) //If the parent object is the Boss
        {
            line_nodes = p.tar_nodes;
            first_node = true;
            SpawnFlyingEnemies(x+x_offset,y+y_offset,line_dir,line_nodes,line_arc,id);
        }
        else //If the parent object is another Flying Enemy
        {
            line_nodes = p.line_nodes - 1;
            if (line_nodes > 1)
            {
               SpawnFlyingEnemies(x+x_offset,y+y_offset,line_dir,line_nodes,line_arc,id);
            }
            else
            {
                last_node = true;
            }
        }
        
    }
	objBoss.LastAction = 1;
}
//If there are already too many
else
{
	alarm[0] = 30
}
}