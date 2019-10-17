class Particula
{
  float x, y;
  float t;
  int dir=1; 

  void movimiento()
  {
    switch(dir)
    {
    case 1:
    x+=3;
    if(x>=width-t/2)
    {
      x=width-t/2;
      dir=2;  
    }
      break;
    case 2:
    y-=3;
    if(y<=0+t/2)
    {
      y=0+t/2;
      dir=3;
    }
      break;
    case 3:
    x-=3;
    if(x<=0+t/2)
    {
      x++;
      dir=4;
    }
      break;
    case 4:
    y+=3;
    if(y>=height-t/2)
    {
      y--;
      dir=1;
    }
      break;
    }
  }
  
  void cambio()
  {
    
   
    
    
    
   
    
  }
}
