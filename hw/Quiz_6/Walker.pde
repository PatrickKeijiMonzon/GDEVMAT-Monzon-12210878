public class Walker
{
    PVector position = new PVector();
    public float scale = 15;
    
    
    public Walker(){}
    
    public void render()
    {
       circle(position.x, position.y, scale); 
    }
}
