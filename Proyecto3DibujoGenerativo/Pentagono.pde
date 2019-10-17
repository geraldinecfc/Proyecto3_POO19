class Pentagono implements Figura
{
  color colorRGBa;
  int tamano;
  int posix;
  int posiy;
  float n,o,vx,vy,a;

  Pentagono(color colorRGBa_, int tamano_, int posix_, int posiy_)
  {
    colorRGBa=colorRGBa_;
    tamano=tamano_;
    posix=posix_;
    posiy=posiy_;
    vx=50;
    vy=50;
    a=QUARTER_PI;
  }

  void moverse()
  {
    n=sin(a)*vy;
    o=cos(a)*vx;
    posix+=o;
    posiy+=n;
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
      vx*=-1;
    }
    if (posix>width+1)
    {
        vx*=-1;
    }
    if (posiy<=-1)
    {
        a*=-1;
    }
    if (posiy>height+1)
    {
        a*=-1;
    }
  }
  void display()
  {
    strokeWeight(tamano/20);
    stroke(255);
    fill(colorRGBa);
    polygon(posix,posiy,tamano/2,5);
   
    
  }

  void polygon(float x, float y, float radius, int npoints) {
    float angle = TWO_PI / npoints;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}
