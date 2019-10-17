class Dibujo
{
  Dibujo()
  {
    
  }
  
  void display()
  {
    switch(forma.val)
    {
      case 0:
      frameRate(60);
      guardar();
      break;
      case 1:
      frameRate(10);
      for(Triangulo t: ta)
      {
        t.display();
        t.moverse();
        t.reu();
        t.regreso();
      }
      funciones();
      break;
      case 2:
      frameRate(10);
       for(Circulo ci: cia)
      {
        ci.display();
        ci.moverse();
        ci.reu();
        ci.regreso();
      }
      funciones();
      break;
      case 3:
     frameRate(30);
      for(Cuadrado c: ca)
      {
        c.display();
        c.moverse();
        c.reu();
        c.regreso();
      }
      funciones();
      break;
      case 4:
      frameRate(30);
      for(Pentagono p: pa)
      {
        p.display();
        p.moverse();
        p.reu();
        p.regreso();
      }
      funciones();
      break;
    }
    println(forma.val);
  }
  
  void funciones()
  {
    if(keyPressed==true)
    {
      if(key=='1')
      {
        forma.val=1;
      }
      if(key=='2')
      {
        forma.val=2;
      }
      if(key=='3')
      {
        forma.val=3;
      }
      if(key=='4')
      {
        forma.val=4;
      }
      if(key=='D'||key=='d')
      {
        forma.val=0;
      }
       
    }
   
  
  }
  
  void guardar()
  {
    if(keyPressed==true && (key=='G'||key=='g'))
    {
      save("dibujo.jpg");
      npan=1;
    }
  }
}
