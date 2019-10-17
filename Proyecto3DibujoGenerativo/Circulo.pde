class Circulo implements Figura
{
  color colorRGBa;
  int tamano;
  int posix;
  int posiy;


  Circulo(color colorRGBa_, int tamano_, int posix_, int posiy_)
  {
    colorRGBa=colorRGBa_;
    tamano=tamano_;
    posix=posix_;
    posiy=posiy_;
  }

  void moverse()
  {
    int per1=int((noise(posix*0.02,posiy*0.01)*width));
    int per2=int((noise(posiy*0.02,posix*0.01)*height));
    posix=per1;
    posiy=per2;
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
    strokeWeight(tamano/10);
    stroke(255,alpha.val);
    fill(colorRGBa);
    ellipse(posix,posiy,tamano,tamano);
  }
}
