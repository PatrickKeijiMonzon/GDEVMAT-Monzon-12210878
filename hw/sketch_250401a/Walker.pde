class Walker
{
    float x;
    float y;
    
    void render()
    {
       circle(x, y, 30); 
    }
    
    void randomWalk()
    {
        int rng = int(random(8));
        int rngR = int(random(256));
        int rngB = int(random(256));
        int rngG = int(random(256));
        int rngA = int(random(50, 101));
        
        fill(rngR, rngG, rngB, rngA);
        noStroke();
         
        if (rng == 0)
        {
           y+=10; 
        }
        else if (rng == 1)
        {
           y-=10; 
        }
        else if (rng == 2)
        {
           x+=10; 
        }
        else if (rng == 3)
        {
           x-=10; 
        }
        else if (rng == 4)
        {
           y+=10; 
           x-=10;
           
        }
        else if (rng == 5)
        {
           y-=10;          
           x+=10; 
        }
        else if (rng == 6)
        {
           y-=10;
           x-=10; 
        }
        else if (rng == 7)
        {
           y+=10;
           x+=10; 
        }
    }
    
        void randomWalkBiased()
    {
        int rng = int(random(9));
        int rngR = int(random(256));
        int rngB = int(random(256));
        int rngG = int(random(256));
        int rngA = int(random(50, 101));
        
        fill(rngR, rngG, rngB, rngA);
         
        if (rng <= 1)
        {
           y+=10; 
        }
        else if (rng == 2)
        {
           y-=10; 
        }
        else if (rng == 3)
        {
           x+=10; 
        }
        else if (rng == 4)
        {
           x-=10; 
        }
        else if (rng == 5)
        {
           y+=10; 
           x-=10;
           
        }
        else if (rng == 6)
        {
           y-=10;          
           x+=10; 
        }
        else if (rng == 7)
        {
           y-=10;
           x-=10; 
        }
        else if (rng == 8)
        {
           y+=10;
           x+=10; 
        }
    }
}
