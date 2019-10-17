class Comienzo extends PantallaO
{
  Comienzo(PImage img_)
  {
     super(img_);
  }
  
  void cambio()
  {
    if(mousePressed == true)
    {
      for(int i=0; i<numagentes.valor();i++)
      {
        ta.add(new Triangulo(color(r.valor(),g.valor(),b.valor(),alpha.valor()),tamano.valor(),pinicialx.valor(),pinicialy.valor()));
        ca.add(new Cuadrado(color(r.valor(),g.valor(),b.valor(),alpha.valor()),tamano.valor(),pinicialx.valor()+i*tamano.valor(),pinicialy.valor()+i*tamano.valor()));
        cia.add(new Circulo(color(r.valor(),g.valor(),b.valor(),alpha.valor()),tamano.valor(),pinicialx.valor(),pinicialy.valor()));
        pa.add(new Pentagono(color(r.valor(),g.valor(),b.valor(),alpha.valor()),tamano.valor(),pinicialx.valor()+i*50,pinicialy.valor()+i*5));
      }
      background(255);
      npan++;
      mousePressed = false;
    }
  }
}
