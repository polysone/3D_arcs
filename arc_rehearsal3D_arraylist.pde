//import peasy.*;
//PeasyCam cam;
ArrayList arcs;
int numArcs = 3;    
int count = 1;
float rotation = 0;
void setup() {
  size(600, 600, P3D);
  /*  cam = new PeasyCam(this, 100);
   cam.setMinimumDistance(100);
   cam.setMaximumDistance(1500); */
  stroke(255);
  arcs = new ArrayList();
  
  float x = width/2;
  float y = height/2;
  float dia;
  for (int i = 0; i < numArcs; i++) {
    dia = width / numArcs * i;
    int speed = int (random(1, 3));
    float varyS = random(0, 10);
    float varyE = random(10, 50);
    int C = 255;

    Arc newArc = new Arc(x, y, dia, speed, varyS, varyE, C);
    arcs.add(newArc);
  }
}

void draw() {
  //  lights();
  smooth();
  noFill();
  background(0);
  myCam();  
  translate(width-width*1.5, height-height*1.5);
  for (int i = 0; i < arcs.size(); i++) {  
    Arc newArc = (Arc) arcs.get(i);
    newArc.move();
    newArc.display();
  }
  adder();

}

void adder() {
  count = count + numArcs;
  println(numArcs);
  if (count >= 500 && numArcs < 3000) {
    count = 1;
    numArcs++;
    float x = width/2;
    float y = height/2;
    float dia;
    dia = random(1, 600);
    int speed = int (random(1, 3));
    float varyS = random(0, 10);
    float varyE = random(10, 50);
    int C = int(random(1, 255));     
    Arc newArc = new Arc(x, y, dia, speed, varyS, varyE, C);
    arcs.add(newArc);
  }
}