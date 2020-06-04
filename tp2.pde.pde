int px, py, out;
int px0, py0, px1, py1, px2, py2, px3, py3, px4, py4, px5, py5, px6, py6, px7, py7, px8, py8, px9, py9, px10, py10, px11, py11;
int a, b, c;

PImage Fondo;

void setup() {
  size(698, 1024);
  Fondo = loadImage("yourname2.jpg");
 
  
  px = width/5;
  py = height/2;
  out = height*2;
  
   px = 400;
  py = 0;
  
  px1 = 1000;
  py1 = 850;
  
  px2 = 1000;
  py2 = 1070;
  
  px3 = 1300;
  py3 = 1370;
  
  px4 = 1300;
  py4 = 1390; 
  
  px5 = 1300;
  py5 = 1410;
  
  px6 = 1400;
  py6 = 1470;
  
  px7 = 1700;
  py7 = 1770;
  
  px8 = 1700;
  py8 = 1790;
  
  px9 = 1700;
  py9 = 1800;
  
  px10 = 1700;
  py10 = 1830;
  
  px11 = 1700;
  py11 = 1870;
}

 

void draw() {
   background(Fondo);
 noLoop();
 PFont y = createFont("Simsun", 60);

 String s = "Name";
 fill(200, 0, 0);
 textFont(y);
 textSize(60);
 text(s, mouseX, mouseY);
 
 fill(255, 255, 255);
 textFont(y);
 textSize(60);
 text("Your", mouseY, mouseX);
 
 loop();
 fill(255);
 PFont f = createFont("Simsun", 60);
 PFont p = createFont("Serif.italic", 55);
 
 fill(200, 0, 0);
  textFont(p);
 textSize(60);
 text("Dirección", px/2, py);
 fill(0, 125, 120); 
  textFont(f);
 textSize(30);
 text("Makoto Shinkai", py/2, px);
  
  fill(200, 0, 0);
  textFont(p);
 textSize(60);
 text("Producción", py1, px1);
 fill(0, 125, 120); 
  textFont(f);
 textSize(30);
 text("Noritaka Kawaguchi", px2, py2);
 
 fill(200, 0, 0);
  textFont(p);
 textSize(60);
 text("Guion", px3, py3);
  fill(255);
 text("Montaje", px4, py4);
  fill(200, 0, 0);
 text("Fotografía", px5, py5);
 fill(0, 125, 120); 
  textFont(f);
 textSize(30);
 text("Makoto Shinkai", px6, py6);
  textSize(60);
  fill(200, 0, 0);
 text("CAST", py8, px8);
   fill(0, 125, 120);
   textSize(20);
 text("Ryūnosuke Kamiki", px7, py7);
 text("Mone Kamishiraishi", px9, py9);
 text("Masami Nagasawa", px10, py10);
 text("Etsuko Ichihara", px11, py11);
 
 px--;
 py++;
 
 px1--;
 py1--;
 
 px2--;
 py2--;
 
 px3--;
 py3--;
 
 px4--;
 py4--;
 
 px5--;
 py5--;
 
 px6--;
 py6--;
 
 px7--;
 py7--;

 px8--;
 py8--;
 
 px9--;
 py9--;
 
 px10--;
 py10--;
 
 px11--;
 py11--;
}
   


 // PFont f = createFont("Simsun", 60);
 //textFont(f);
 //text("CAST", px/2+(px/5), out);
  
