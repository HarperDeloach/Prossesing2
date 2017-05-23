//Harper Deloach May 23
void setup() {
  size(380,280);
  smooth();
  ellipseMode(RADIUS);
}


int x = 120;
int y = 180;
int bw = 150;
int bl = 200;
int cheekd = 50;
int eyey = y-25;
int reyex = x+20;
int leyex = x+60;
int rpupilx = reyex;
int lpupilx = rpupilx+40;
int pupily = eyey;
int eyed = 15;



void draw() {
  background(235);
  
if(keyPressed)    {
  if(key == CODED)  {
    if (keyCode == LEFT)  {
      x--;
      reyex--;
      leyex--;
      rpupilx--;
      lpupilx--;
    }
    else if (keyCode == RIGHT)  {
      x++;
      reyex++;
      leyex++;
      rpupilx++;
      lpupilx++;
    }
    else if (keyCode == UP)  {
      y--;
      eyey--;
      pupily--;
    }
    else if (keyCode == DOWN)  {
      y++;
      eyey++;
      pupily++;
    }
  }
}  
  
if(keyPressed)    {
   fill(255,255,0);
}
else  {
fill(20,235,255);
}




endShape(CLOSE);
endShape(CLOSE);
  rect(x,y,bw,bl); 
  ellipse(x+bw/2,y,60,60); 
   
if(keyPressed) {
   fill(255,0,125);
 }

else  {
fill(255,75,75);
}
   ellipse(x,y+5,cheekd,cheekd);
  ellipse(x+bw,y+5,cheekd,cheekd);
fill(255);  //eyes
  ellipse(reyex,eyey,eyed,eyed);
  ellipse(leyex,eyey,eyed,eyed);
fill(0);

float d1 = dist(mouseX, mouseY, reyex, eyey);
float d2 = dist(mouseX, mouseY, leyex, eyey);
if (d1 < eyed) {
rpupilx=mouseX;
lpupilx=mouseX+40;
pupily=mouseY;
}
else if (d2 < eyed) {
rpupilx=mouseX-40;
lpupilx=mouseX;
pupily=mouseY;
}
else if ((d1 > eyed)||(d2 > eyed)) {
  rpupilx=reyex;
  lpupilx=reyex+40;
  pupily=eyey;
}
  ellipse(rpupilx,pupily,3.5,3.5);
  ellipse(lpupilx,pupily,3.5,3.5);
line(x+20,y+15,x+60,y+25); 
}