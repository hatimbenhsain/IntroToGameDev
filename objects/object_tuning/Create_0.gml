///Player stuff
maxVyDown=8;
maxVyUp=-8;
g=0.25;
jumpV=-5;
startVy=-8;
startVx=0;
ax=0.5;
xRes=0.2;
maxVx=5;
g=0.15;
maxHover=150;
hoverAcc=-g*1.5;
initBoost=10;

//Game manager stuff
aliensToKill=25;
timeLimit=30;
minPlatforms=5;
maxPlatforms=10;
platformFreq=50;
platformScore=1;
killScore=5;
dieScore=10;
startPosition=room_width*0.2;

//Graphics
recWidth=100;
recHeight=5;
timerX=room_width/2;
timerY=room_height*0.025;
scoreX=room_width*0.1125;
scoreY=room_height*0.05;
aliensX=room_width*0.48;
aliensY=room_height*0.9;
recX=room_width*0.05;
recY=room_height*0.15;
timerColor1=$592BEF;
timerColor2=$3B08E0;
score1Color1=make_color_rgb(255,101,216);
score1Color2=make_color_rgb(232,74,106);
score2Color1=make_color_rgb(255,247,94);
score2Color2=$85AF36;
aliensColor1=$39B54A;
aliensColor2=$013F2F;