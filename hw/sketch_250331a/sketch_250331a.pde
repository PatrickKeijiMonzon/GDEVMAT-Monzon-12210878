void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  
  //circle(0, 0, 15);
  
  //strokeWeight(1);
  
  //color white = color(255, 255, 255);
  //fill(white);
  //stroke(white);
  
  //line(-75, -75, 75, 75);
  
  //line(0, -300, 0, 300);
  //line(-300, 0, 300, 0);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
  drawSineWave();
  
}

void drawCartesianPlane()
{
  strokeWeight(1);
  
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i+= 10)
  {
     line(i, -2, i, 2);
     line(-2, i, 2, i);
  } 
}

void drawLinearFunction()
{
  color red = color(255, 0, 0);
  fill(red);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 5);
  }
}

void drawQuadraticFunction()
{
  color green = color(0, 255, 0);
  fill(green);
  stroke(green);

  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) + (2 * x) - 5), 5);
  }
}

void drawCircle()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
     circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5); 
  }
}

void drawSineWave()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  
    for (float x = -270; x <= 270; x++)
  {
     circle((x), (30*(float)Math.sin((12 * 3.14) * (x * -5))), 5); 
  }
  
}
