Decay--;
x += objControl.GlobalMovement/3;
y += -1;
image_alpha = lerp(image_alpha, 0, 0.1);
image_yscale = lerp(image_yscale, 1, 0.2);
if(Decay <= 0) instance_destroy();