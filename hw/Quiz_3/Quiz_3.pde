void setup()
{
    size(1020,720,P3D);
    camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
    background(255);
}

void draw()
{
    float xGaussian = randomGaussian();
    float sGaussian = randomGaussian();
    float y = random(-360, 361);
    
    //int sGaussian = int(randomGaussian());
    int rgbR = int(random(256));
    int rgbG = int(random(256));
    int rgbB = int(random(256));
    int a = int(random(10, 101));
    
    float xStandardDeviation = 510;
    float sStandardDeviation = 30;
    
    float coordinateMean = 0;
    float sizeMean = 15;
    
    
    float x = xStandardDeviation * xGaussian + coordinateMean;
    float size = sStandardDeviation * sGaussian + sizeMean;
    
    noStroke();
    
    fill(rgbR, rgbB, rgbG, a);
    circle(x, y, size);
    
}
