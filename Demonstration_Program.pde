void setup(){
  size(500, 500);
  background(255,255,255);
}
//Let float c be either 0.05 or 0.5, or if you want to have a seizure,
//leave it at 10. Remember to click the mouse when you're done.
float c = 10;
float x = 0;
float y = 0;
float x1 = 250;
float y1 = 250;
float z = 2 * PI;

void draw(){
 // background(255,255,255);
  x = x + c;
  y = y + c;
  ellipse(x1 + 50 * cos(x), y1 + 50 * sin(x), 36, 36);
  if (x > z){
    float x1 = random(0,255);
    float y1 = random(0,255);
    float z1 = random(0,255);
    float x2 = random(0,500);
    float y2 = random(0,500);
    fill(x1,y1,z1);
    ellipse(x2 + 50 * cos(x), y2 + 50 * sin(x), 36, 36);
    z = z + 2 * PI;
  }
}

void mousePressed(){
    float x1 = random(0,500);
    float y1 = random(0,500);
  ellipse(x1 + 50 * cos(x), y1 + 50 * sin(x), 36, 36);
    c = .05;
}
