class CuadradoP extends Particula
{

  CuadradoP(float x_, float y_, float t_)
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
    rect(x,y,t,t);
  }
}
