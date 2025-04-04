
Walker[] walkers = new Walker[10];

PVector wind = new PVector(0.2, 0);
PVector gravity = new PVector(0, -0.5);

void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   
   for (int i = 0; i < 10; i++)
   {
     walkers[i] = new Walker();
     walkers[i].mass = int(random(1, 11));
     walkers[i].scale = walkers[i].mass * 15;
     walkers[i].velocity = new PVector(-5, 8);
     walkers[i].setColor(int(random(256)), int(random(256)), int(random(256)), 255);
   }
   
}

void draw()
{
    background(255);
    for (int i = 0; i < 10; i++)
    {
      walkers[i].applyForce(gravity);
      walkers[i].applyForce(wind);
      walkers[i].render();
      walkers[i].update();
      walkers[i].checkEdges();
    }
}
