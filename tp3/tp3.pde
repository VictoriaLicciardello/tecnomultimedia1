PFont fuente1;
PImage cafedialogo, cafedialogo2, cafeopciones2, cafeopciones3, frente;
int btnx, btny, bancho, balto, btnx1, btny1, btny12, bancho1, balto1;
String estado;
void setup() {
  size(800, 600);
  
  frente = loadImage("frente.jpg");
  cafedialogo = loadImage("cafecuadrodialogo.jpg");
  cafeopciones2 = loadImage("cafecuadroopciones2.jpg");
  cafeopciones3 = loadImage("cafecuadroopciones3.jpg");
  estado = "frente";
  
  btnx = 670;
  btny = 550;
  bancho = 100;
  balto  = 40;
  
  btnx1 = 160;
  btny1 = 290;
  btny12 = 375;
  bancho1 = 420;
  balto1  = 50;
}

void draw() {
 background(0);
  
 

 if (estado == "frente") {
 image(frente, 0, 0);
  fuente1 = loadFont("fuente1.vlw");
  textFont(fuente1, 25);
  fill(0);
  text("Vas caminando por la calle cuando una elegante cafetería llama tu atención.", 50, 520);
  text("Sig", 705, 575);
  fill(100, 100, 50, 40);
  rect(670, 550, 100, 40);
 }
 if (estado == "cafedialogo") {
 image(cafedialogo, 0, 0);
  textFont(fuente1, 23);
  fill(0);
  text("Entras y te encontras con un ambiente agradable, decidis buscar una mesa y te sentas.", 50, 520);
  text("Te percatas de que en la mesa de al lado hay una mujer llorando, de manera desconsolada.", 50, 540);
  text("Sig", 705, 575);
  fill(100, 100, 50, 40);
  rect(670, 550, 100, 40);
 }
 if (estado == "1opciones2") {  //opciones2
 image(cafeopciones2, 0, 0);
  textFont(fuente1, 30);
  fill(0);
  text("¿Qué haces?", 350, 100); 
  text("Le preguntas qué le pasa", 160, 320); 
  text("La ignoras", 160, 405); 
  fill(0);
 }
 //ACUDIR///////////////////////////
 if (estado == "acudir") {
 image(cafedialogo, 0, 0);
  textFont(fuente1, 23);
  fill(0);
  text("Te paras y te acercas a ella, le preguntas si necesita ayuda.", 50, 520);
  text("Ella responde que no sabe que ordenar.", 50, 540);
  text("Sig", 705, 575);
  fill(100, 100, 50, 40);
  rect(670, 550, 100, 40);
 }
if (estado == "acudiropciones3") {  //opciones2
 image(cafeopciones3, 0, 0);
  textFont(fuente1, 30);
  fill(0);
  text("¿Qué haces?", 350, 100); 
  text("La ayudas amablemente", 160, 320); 
  text("Crees que es infantil, asique te vas", 160, 405); 
  text("Pides un helado de menta para ella", 160, 490); 
  fill(0);
 }

 
 //IGNORAR//////////////////////
  if (estado == "ignorar") {
 image(cafedialogo, 0, 0);
  textFont(fuente1, 23);
  fill(0);
  text("La ignoras y empiezas a ver la carta. Hay varias opciones pero dos te llaman la atención.", 50, 520);
  text("El mozo llega y te pregunta que vas a ordenar.", 50, 540);
  text("Sig", 705, 575);
  fill(100, 100, 50, 40);
  rect(670, 550, 100, 40);
 }
 
}

void mousePressed() {
  //save("historia1.png");
 
 if (mouseX> btnx && mouseX< btnx + bancho && mouseY> btny && mouseY< btny + bancho && estado == "frente") {
 estado = "cafedialogo"; //btn siguiente
 }

 else if (mouseX> btnx && mouseX< btnx + bancho && mouseY> btny && mouseY< btny + bancho && estado == "cafedialogo") {
 estado = "1opciones2";//btn siguiente
 }
//Acudir////////////////////////
 else if (mouseX> btnx1 && mouseX< btnx1 + bancho*2 && mouseY> btny1 && mouseY< btny1 + balto && estado == "1opciones2") {
 estado = "acudir";//btn opciones 2
 }
 else if (mouseX> btnx && mouseX< btnx + bancho && mouseY> btny && mouseY< btny + bancho && estado == "acudir") {
 estado = "acudiropciones3"; //btn siguiente
 }
 else if (mouseX> btnx1 && mouseX< btnx1 + bancho && mouseY> btny12 && mouseY< btny12 + balto && estado == "acudiropciones3") {
 estado = "cafedialogoacudir1"; //btn opciones 2 
 }

//Ignorar//////////////////////
 else if (mouseX> btnx1 && mouseX< btnx1 + bancho && mouseY> btny12 && mouseY< btny12 + balto && estado == "1opciones2") {
 estado = "ignorar"; //btn opciones 2
 }
  if (mouseX> btnx && mouseX< btnx + bancho && mouseY> btny && mouseY< btny + bancho && estado == "frente") {
 estado = "cafedialogo"; //btn siguiente
 }

}
