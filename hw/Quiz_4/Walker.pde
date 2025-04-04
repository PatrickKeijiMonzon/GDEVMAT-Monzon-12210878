class Walker 
{
    public float x;
    public float y;
    public float tx = 0, ty = 10000;
    public float tRGB_R = 10000, tRGB_G = 20000, tRGB_B = 30000; 
    public float tS = 10000;
    
    void perlinWalk() 
    {
        noStroke();
        x = map(noise(tx), 0, 1, -540, 540);
        y = map(noise(ty), 0, 1, -360, 360);
            
        int rgbR = int(map(noise(tRGB_R), 0, 1, 0, 255));
        int rgbG = int(map(noise(tRGB_G), 0, 1, 0, 255));
        int rgbB = int(map(noise(tRGB_B), 0, 1, 0, 255));
        int size = int(map(noise(tS), 0, 1, 5, 150));
         
        fill(rgbR, rgbG, rgbB, 150);
        circle(x, y, size);
            
        ty += 0.01f;
        tx += 0.01f;
        tS += 0.01f;
        tRGB_R += 0.1f;
        tRGB_G += 0.1f;
        tRGB_B += 0.1f;
    }
}
