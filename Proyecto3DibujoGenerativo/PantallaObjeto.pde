class PantallaO
{
  PImage img;
  int px,py;
  float an,al;
  
  PantallaO(PImage img_)
  {
    img=img_;
    px=width/2;
    py=height/2;
    an=width;
    al=height;
  }
  
  void display()
  {
    image(img,px,py,an,al);
  }
  
  void cambio()
  {
    if(mousePressed == true)
    {
      npan++;
      mousePressed = false;
    }
  }
}
