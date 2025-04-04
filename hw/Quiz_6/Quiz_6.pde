void setup()
{
   size(1080, 720, P3D);
   camera(0, 0, 600, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
   float x = mouseX - width / 2;
   float y = -(mouseY - height / 2);
   return new PVector(x, y);
}

void draw()
{
    background(130);
    
    PVector mouse = mousePos();
    println(mouse.x, mouse.y);
    mouse.normalize();
    
    PVector handleStart = mouse.copy().mult(-40); 
    PVector handleEnd = mouse.copy().mult(40);  

    strokeWeight(8);
    stroke(0);
    line(handleStart.x, handleStart.y, handleEnd.x, handleEnd.y);

    Blade1(handleStart, mouse);
    Blade2(handleEnd, mouse);
}

void Blade1(PVector handlePos, PVector dir)
{
    PVector bladeEnd1 = PVector.add(handlePos, PVector.mult(dir, -180));
    PVector bladeEdge1 = PVector.add(handlePos, PVector.mult(dir, -170));

    strokeWeight(16);
    stroke(255, 0, 0);
    line(handlePos.x, handlePos.y, bladeEnd1.x, bladeEnd1.y); 

    strokeWeight(4);
    stroke(255, 255, 255);
    line(handlePos.x, handlePos.y, bladeEdge1.x, bladeEdge1.y);
}

void Blade2(PVector handlePos, PVector dir)
{
    PVector bladeEnd2 = PVector.add(handlePos, PVector.mult(dir, 180));
    PVector bladeEdge2 = PVector.add(handlePos, PVector.mult(dir, 170));

    strokeWeight(16);
    stroke(255, 0, 0);
    line(handlePos.x, handlePos.y, bladeEnd2.x, bladeEnd2.y); 

    strokeWeight(4);
    stroke(255, 255, 255);
    line(handlePos.x, handlePos.y, bladeEdge2.x, bladeEdge2.y);
}
