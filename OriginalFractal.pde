int z = 50;

public void setup() 
{
  size(900, 900);
}

public void draw() 
{
  background(0);
  fractal(350, 350, z);
  if(z<50) z = 50;
}

public void fractal(float x, float y, float len) {
  strokeWeight(0.6);
  noFill();
  stroke(220,20,60);
  if(len > 145) {
    fractal(x, y - len/2, len/2);
    fractal(x, y + len/2, len/2);
    fractal(x + len/2, y, len/2);
    fractal(x - len/2, y, len/2);
    fractal(x - (len/2)/sqrt(2), y - (len/2)/sqrt(2), len/2);
    fractal(x + (len/2)/sqrt(2), y - (len/2)/sqrt(2), len/2);
    fractal(x - (len/2)/sqrt(2), y + (len/2)/sqrt(2), len/2);
    fractal(x + (len/2)/sqrt(2), y + (len/2)/sqrt(2), len/2);
  }
  ellipse(x, y, 2*len, 2*len);
}

public void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      z=z+50;
    }
    else if (keyCode == LEFT){
      z=z-50;
    }
  }
}
