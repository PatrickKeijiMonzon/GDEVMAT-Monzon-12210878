public class Walker
{
    PVector position = new PVector();
    public PVector velocity = new PVector(0, 0);
    public PVector acceleration = new PVector();
    public float scale = 15;
    public float r, g, b, a;
    
    public float velocityLimit = 10;
    public float mass = 1;
    
    public Walker()
    {
       position = new PVector(int(random(-640, 641)), int(random(-360, 360)));
    }
    
    public void applyForce(PVector force)
    {
        PVector f = PVector.div(force, this.mass);
        this.acceleration.add(f);
    }
    
    public void update()
    {
       this.velocity.add(this.acceleration);
       this.velocity.limit(velocityLimit);
       this.position.add(this.velocity); 
       this.acceleration.mult(0);
    }
    
    public void render()
    {
       fill(r, g, b, a);
       circle(position.x, position.y, scale); 
    }
    
    public void checkEdges()
    {
       if (this.position.x >= Window.right)
       {
          this.position.x = Window.right;
          this.velocity.x *= -1;
       }
       else if (this.position.x <= Window.left)
       {
          this.position.x = Window.left;
          this.velocity.x *= -1;
       }
       
       if (this.position.y >= Window.top)
       {
          this.position.y = Window.top;
          this.velocity.y *= -1;
       }
       else if (this.position.y <= Window.bottom)
       {
          this.position.y = Window.bottom;
          this.velocity.y *= -1;
          
       }
    }
    
        public void setColor(float r, float g, float b, float a)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}
