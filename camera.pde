//DECLARE
// float rotation = 0;
float wobble = 0;

void myCam(){


  float orbitRadius = 500;
  float ypos = (sin(wobble) * 100);
  float xpos = (cos(rotation) * orbitRadius);
  float zpos = (sin(rotation) * orbitRadius);
//  float xpos = cos(radians(rotation)) * orbitRadius;
//  float zpos = sin(radians(rotation)) * orbitRadius;
  camera(xpos,ypos,zpos,  0,0,0,  0,-1,0);  

  if (numArcs < 175) {
    rotation = rotation + 0.005;
  }
//  else {
//        rotation = rotation + 0.002;
//  };
  
  wobble = wobble + 0.005;
  
}