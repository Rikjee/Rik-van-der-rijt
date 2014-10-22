class Rik_van_der_rijt_Creature extends Creature {
float agitation = 0;

void setup() {
    size(400,400);
}

void setAgitation(float newAgitation) {
  agitation = newAgitation;
}

void draw(float x, float y) {
  background(0);
  
  //setAgitation(map(mouseX, 0, width, 0, 1));
  
  fill(255, 255, 255);
  ellipse (width / 2, height / 2, 300, 300);
  
  stroke(0, 10, 10);
  strokeWeight(2);
  noFill();
  float phase = frameCount * 0.05;
  float phaseAddition = map(sin(phase), -1, 1, 0, 0.75);
  for(int i = 0; i < 10; i++){
  stroke(30 * i);
  float x1 = sin(phase);
  float x2 = sin(phase + 0.5);
  float radius = map(x1, -1, 1, 40, 20);
  float radius2 = map(x2, -1, 1, 40, 80);
  float r = map(x1, -1, 1, 255, 255);
  float g = map(x1, -1, 1, 0, 0);
  float b = map(x1, -1, 1, 0, 0);
  
  float lineWidthAddition = random(map(agitation, 0, 1, 0, 25));
  float fillg = map(agitation, 0, 1, 255, 0);
  float fillb = map(agitation, 0, 1, 255, 0);
  fill(255, fillg, fillb);
  ellipse (width / 1.4, height / 3, radius, radius);
  ellipse (width / 2.5, height / 3, radius, radius);
  phase = phase + phaseAddition;
  phaseAddition += 0.1;
  ellipse (width / 2, height / 1.5, radius2, radius2);
  }
  
  fill(255, 50, 250);
  ellipse (width / 2.5, height / 8, 20, 20);
  ellipse (width / 2.6, height / 10, 20, 20);
  ellipse (width / 2.7, height / 12, 20, 20);
  ellipse (width / 2.8, height / 14, 20, 20);
  ellipse (width / 2.9, height / 16, 20, 20);
  ellipse (width / 3, height / 18, 20, 20);
  ellipse (width / 3.1, height / 20, 20, 20);
  ellipse (width / 1.5, height / 7, 20, 20);
  ellipse (width / 1.45, height / 8, 20, 20);
  ellipse (width / 1.40, height / 9, 20, 20);
  ellipse (width / 1.35, height / 10, 20, 20);
  ellipse (width / 1.30, height / 11, 20, 20);


}
}
