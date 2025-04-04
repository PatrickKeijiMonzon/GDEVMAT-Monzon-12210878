public class Mover
{
    public PVector position;
    public float scale;
    public float r, g, b, a;
    PVector velocity;
    PVector acceleration;
    float maxSpeed = 5;
    boolean reachedTarget = false;


    Mover()
    {
        randomizePosition();
        velocity = new PVector();
        acceleration = new PVector();
    }


    Mover(float x, float y)
    {
        position = new PVector(x, y);
    }


    Mover(float x, float y, float scale)
    {
        position = new PVector(x, y);
        this.scale = scale;
    }


    Mover(PVector position)
    {
        this.position = position;
    }


    Mover(PVector position, float scale)
    {
        this.position = position;
        this.scale = scale;
    }


    public void randomizePosition()
    {
        position = new PVector(random(-640, 640), random(-360, 360));
    }

    public void render()
    {
        fill(r, g, b, a);
        circle(position.x, position.y, scale); 
    }


    public void moveToTarget(PVector target)
    {
        if (!reachedTarget)
        {
            PVector direction = PVector.sub(target, position);
            float distance = direction.mag();

            if (distance < 10)
            {
                reachedTarget = true;
                velocity.mult(0); 
            }
            else
            {
                direction.normalize();
                direction.mult(0.5);  
                acceleration.set(direction);

                velocity.add(acceleration);
                velocity.limit(maxSpeed);
                position.add(velocity);
            }
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
