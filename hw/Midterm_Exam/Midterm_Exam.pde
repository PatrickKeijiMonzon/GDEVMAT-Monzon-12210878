Mover[] movers = new Mover[100];
Mover target = new Mover();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  for (int i = 0; i < 100; i++)
  {
     movers[i] = new Mover();
     movers[i].setColor(int(random(256)), int(random(256)), int(random(256)), 255);
  }
}

void draw()
{
    background(255);

    boolean allReached = true; 
    strokeWeight(50);

    for (int i = 0; i < movers.length; i++)
    {   
        noStroke();
        movers[i].moveToTarget(target.position);
        movers[i].render();

        if (!movers[i].reachedTarget)
        {
            allReached = false;  
        }
    }

    target.render();
    
    if (allReached)
    {
        resetAllMovers();
        resetTarget();
    }
}


void resetTarget()
{
    target = new Mover();
    target.scale = 50;
    target.position.set(random(target.scale, Window.windowWidth - target.scale), random(target.scale, Window.windowHeight - target.scale));
    target.setColor(0, 0, 0, 255);
}


void resetAllMovers()
{
    for (int i = 0; i < movers.length; i++)
    {
        movers[i].randomizePosition();
        movers[i].velocity.set(0, 0);
        movers[i].reachedTarget = false; 
        movers[i].setColor(int(random(256)), int(random(256)), int(random(256)), 100);
        movers[i].scale = random(10, 40);  
    }
}
