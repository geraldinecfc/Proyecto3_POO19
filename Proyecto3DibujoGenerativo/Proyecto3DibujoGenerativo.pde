int npan;

boolean rell;
boolean line;

PantallaF flujo;
PantallaO inicio;
PantallaO instr;
PantallaO infor;
Comienzo comienzo;
Dibujo dibujo;
Ajustes r;
Ajustes g;
Ajustes b;
Ajustes alpha;
Ajustes tamano;
Ajustes forma;
Ajustes pinicialx;
Ajustes pinicialy;
Ajustes numagentes;
CuadradoP c1;
ArrayList <CuadradoP> cs;
ArrayList <CirculoP> cl;
ArrayList <TrianguloP> ts;

ArrayList <Triangulo> ta;
ArrayList <Cuadrado> ca;
ArrayList <Circulo> cia;
ArrayList <Pentagono> pa;

PImage ini;
PImage ins;
PImage aju;
PImage info;
PImage ac;
PFont futura;
void setup()
{
  size(1000,600);
  background(255);
  imageMode(CENTER);
  rectMode(CENTER);
  npan=1;
  flujo = new PantallaF();
  ini = loadImage("inicio.jpg");
  ins = loadImage("instrucciones.jpg");
  aju = loadImage("ajustes.jpg");
  info = loadImage("info.jpg");
  ac = loadImage("ac.jpg");
  futura = loadFont("FuturaBT-Bold-48.vlw");
  inicio = new PantallaO(ini);
  instr = new PantallaO(ins);
  infor = new PantallaO(info);
  comienzo = new Comienzo(ac);
  dibujo = new Dibujo();
  r = new Ajustes(aju,"Rojo",0,255);
  g = new Ajustes(aju,"Verde",0,255);
  b = new Ajustes(aju,"Azul",0,255);
  alpha = new Ajustes(aju,"Transparencia",0,255);
  tamano = new Ajustes(aju,"Tamaño",5,200);
  forma = new Ajustes(aju,"Forma",1,4);
  pinicialx = new Ajustes(aju,"Posición Inicial X",0,width);
  pinicialy = new Ajustes(aju,"Posición Inicial Y",0,height);
  numagentes = new Ajustes(aju,"Número Agentes",1,100);
  c1 = new CuadradoP(20,height-20,40);
  cs = new ArrayList<CuadradoP>();
  cl = new ArrayList<CirculoP>();
  ts = new ArrayList<TrianguloP>();
  ta = new ArrayList<Triangulo>();
  ca = new ArrayList<Cuadrado>();
  cia = new ArrayList<Circulo>();
  pa = new ArrayList<Pentagono>();
  
  for(int i=0; i<=100;i++)
  {
    
    cs.add(new CuadradoP(5*i,height-20,40));
   
    cl.add(new CirculoP(5*i,height-20,40));
    
    ts.add(new TrianguloP(5*i,height-20,40));
  }
}

void draw()
{
  flujo.fluir();
}
