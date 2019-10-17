class Triangulo implements Figura
{
  color colorRGBa;
  int tamano;
  int posix;
  int posiy;


  Triangulo(color colorRGBa_, int tamano_, int posix_, int posiy_)
  {
    colorRGBa=colorRGBa_;
    tamano=tamano_;
    posix=posix_;
    posiy=posiy_;
  }

  void moverse()
  {
    posix=int(random(width));
    posiy=int(random(height));
  }

  void reu()
  {
    if (mousePressed==true)
    {
      posix=mouseX;
      posiy=mouseY;
      mousePressed=false;
    }
    
   
  }
  void regreso()
  {
    if (posix<=-1)
    {
      posix=width;
    }
    if (posix>width+1)
    {
      posix=0;
    }
    if (posiy<=-1)
    {
      posiy=height;
    }
    if (posiy>height+1)
    {
      posiy=0;
    }
  }
  void display()
  {
    //noStroke();
    //if(alpha.valor()==255)
    //{
    //  strokeWeight(tamano/10);
    //  stroke(255);
    //}
    strokeWeight(tamano/10);
    stroke(255);
    fill(colorRGBa);
    triangle(posix, posiy-tamano/2, posix-tamano/2, posiy+tamano/2, posix+tamano/2, posiy+tamano/2);
  }
}
