class TrianguloP extends Particula
{

  TrianguloP(float x_, float y_, float t_)
  {
    x=x_;
    y=y_;
    t=t_;
   
  }
  
  void display()
  {
    super.movimiento();
    noStroke();
    fill(255);
    triangle(x,y-t/2,x-t/2,y+t/2,x+t/2,y+t/2);
  }
}
