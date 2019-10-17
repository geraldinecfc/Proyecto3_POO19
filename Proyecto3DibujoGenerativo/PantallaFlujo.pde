class PantallaF
{
  PantallaF()
  {
    
  }
  
  void fluir()
  {
    switch(npan)
    {
      
      case 1:
      inicio.display();
      inicio.cambio();
      //c1.display();
      for(CuadradoP c : cs)
      {
        c.display();
      }
      break;
      case 2:
      instr.display();
      instr.cambio();
       for(CirculoP c : cl)
      {
        c.display();
      }
      break;
      case 3:
      r.ajustes();
      r.cambios();
      break;
      case 4:
      g.ajustes();
      g.cambios();
      break;
      case 5:
      b.ajustes();
      b.cambios();
      break;
      case 6:
      alpha.ajustes();
      alpha.cambios();
      break;
      case 7:
      tamano.ajustes();
      tamano.cambios();
      break;
      case 8:
      forma.ajustes();
      forma.cambios();
      break;
      case 9:
      pinicialx.ajustes();
      pinicialx.cambios();
      break;
      case 10:
      pinicialy.ajustes();
      pinicialy.cambios();
      break;
      case 11:
      numagentes.ajustes();
      numagentes.cambios();
      break;
      case 12:
      comienzo.display();
      comienzo.cambio();
      break;
      case 13:
      dibujo.display();
      break;
    }
    
    if(npan>2 && npan<13)
    {
      println(r.val,g.val,b.val,alpha.val);
       for(TrianguloP c : ts)
      {
        c.display();
      }
      
    }
  }
}
