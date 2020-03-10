/// @description Insert description here
// You can write your code in this editor
image_xscale=image_xscale*90/100;
image_yscale=image_yscale*90/100;
vx+=sign(vx);
vy+=sign(vy);
x+=vx;
y+=vy;
if(image_xscale<=0.01){
	instance_destroy(self);	
}