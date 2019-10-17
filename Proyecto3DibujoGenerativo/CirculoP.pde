class CirculoP extends Particula
{

  CirculoP(float x_, float y_, float t_)
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
   ellipse(x,y,t,t);
  }
}
