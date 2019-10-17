class Cuadrado implements Figura
{
  color colorRGBa;
  int tamano;
  int posix;
  int posiy;
  float aum;
  int sen1;
  int dirx,diry;
  


  Cuadrado(color colorRGBa_, int tamano_, int posix_, int posiy_)
  {
    colorRGBa=colorRGBa_;
    tamano=tamano_;
    posix=posix_;
    posiy=posiy_;
    dirx=1;
    diry=1;
  }

  void moverse()
  {
    aum+=0.5;
     sen1=int(posix+(sin(aum))*100);
    posix+=(10*dirx);
    
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
      dirx*=-1;
    }
    if (posix>width+1)
    {
        dirx*=-1;
    }
    if (posiy<=-1)
    {
        diry*=-1;
    }
    if (posiy>height+1)
    {
        diry*=-1;
    }
  }
  void display()
  {
    strokeWeight(tamano/20);
    stroke(255);

    fill(colorRGBa);
    rectMode(CENTER);
    rect(posix,posiy+(sen1*diry),tamano,tamano);
  }
}
