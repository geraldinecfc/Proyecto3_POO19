class Ajustes extends PantallaO
{
  String nombre;
  int min, max;
  int val = 0;
  boolean infoact;

  Ajustes(PImage img_, String nombre_, int min_, int max_)
  {
    super(img_);
    nombre = nombre_;
    min=min_;
    max=max_;
    if (nombre=="Transparencia"||nombre=="Tamaño")
    {
      val=255;
    }
  }

  void ajustes()
  {
    super.display();
    textFont(futura);
    textSize(48);
    textAlign(CENTER);
    text(nombre, width/2, 140);
    textSize(36);
    text(valor(), width/2, 210);
    verinfo();
  }

  int valor()
  {
    //int val = 0;
    if (val<min)
    {
      val=min;
    }
    if (val>max)
    {
      val=max;
    }

    if (keyPressed==true && keyCode==LEFT)
    {
      val--;
      if (val<min)
      {
        val=min;
      }
      keyPressed=false;
    }

    if (keyPressed==true && keyCode==RIGHT)
    {
      val++;
      if (val>max)
      {
        val=max;
      }
      keyPressed=false;
    }

    return val;
  }

  void cambios ()
  {
    if (keyPressed)
    {
      if (key=='A'||key=='a')
      {
        npan--;
      }
      if (key=='S'||key=='s')
      {
        npan++;
      }

      if (key=='I'||key=='i')
      {
        infoact=true;
      }
      keyPressed=false;
    }

    if (mousePressed==true)
    {
      infoact=false;
      mousePressed=false;
    }
  }

  void verinfo()
  {
    if (infoact==true)
    {
      infor.display();
      noStroke();
      fill(r.valor(), g.valor(), b.valor(), alpha.valor());
      ellipse(250, 280, tamano.valor(), tamano.valor());
    }
  }
}
