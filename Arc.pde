class Arc {

  float x, y;
  float diameter;
  int angle = int(random(10));
  int speed;
  int direction = int(random(2));
  float varyS;
  float varyE;
  float start;
  float end;
  float C;
  
  //CONSTRUCTOR

  Arc(float xpos, float ypos, float dia, int rt, float vS, float vE, int Cl) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = rt;
    varyS = vS;
    varyE = vE;
    C = Cl;
  }

  //FUNCTIONS

  void move() {
    
    start = radians(angle*direction + sin(varyS)*100);
    end = radians(angle*direction + cos(varyE)*100);
    if (direction == 0) {
    direction = direction -1; }
  
  }

  void display () {   
    stroke(C);
    strokeWeight(2);
    arc(x, y, diameter, diameter, start, end);
    angle = angle + speed;
    varyS -= 0.01;
    varyE += 0.01;

  }
 }