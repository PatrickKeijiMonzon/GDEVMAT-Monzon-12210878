//Walker myWalker = new Walker();
Walker[] walkers = new Walker[100];

void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, 600, 0, 0, 0, 0, -1, 0);
   
   //myWalker.velocity = new PVector(-5, 8);
   for (int i = 0; i < walkers.length; i++)
   {
     walkers[i] = new Walker();
     walkers[i].scale = 50;
   }
}

PVector mousePos()
{
   float x = mouseX - width / 2;
   float y = -(mouseY - height / 2);
   return new PVector(x, y);
}

void draw()
{
    background(80);
    PVector mouse = mousePos();
    for (int i = 0; i < 100; i++)
    {
      walkers[i].acceleration = new PVector(mouse.x, mouse.y);
      walkers[i].update();
      walkers[i].render();
      walkers[i].checkEdges();
    }
    println("x " + mouse.x + " y " + mouse.y);
 
}
