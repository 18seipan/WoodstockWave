// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/
//Andy Seiple

float arcStart = PI;
float arcEnd= PI;
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/60;

void setup()
{ 
  size(600, 600);
  background(5, 255, 236);
  noFill();
  stroke(255, 255, 255);
  strokeWeight(5);
}

int count;
int sz;

void draw()
{
  int count = 0;
  background(5, 255, 236);
  while (count <= 25) {
    sz = count * 20;
    arcEnd = map(sin(movement + (maxArcEnd / 50 * count)), -1, 1, arcStart, maxArcEnd);
    arc(width/2, height/2, sz, sz, arcStart, arcEnd);
    count = count + 1;
  }
  movement = movement + speed;
}
