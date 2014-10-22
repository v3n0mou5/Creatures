class JoeyBuijsersCharacter{
  
void setup() {
    size(800, 800);
}
  float agitation = 0.1;
void draw() {

  
  if(agitation < 0.7){
    background(0);
  }
    //background(0);
    stroke(255);
    noFill();
    float phase = frameCount * 0.105 * agitation;      
    float phaseAddition = map(sin(phase),sin(phase),1,0,0.25);
    for(int i =0;i<15;i++){
      float x = sin(phase);
      float radius = map(x,-1,1,40,300);
      float lineWidth = map(x,-1,1,0,5);
      float r = map(x,-1,1,0,0);
      float g = map(x,-1,1,100,0);
      float b = map(x,-1,1,0,125);
      stroke(r,g,b);
      strokeWeight(lineWidth);
      
      rect(300, height/2,radius,radius);
      phase = phase + phaseAddition;
      phaseAddition += 0.05;
      rotate(100000);
      

            
    }
    
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      agitation+=0.01;
    }
     if (keyCode == DOWN) {
      //agitation-=0.1;
    }
  }
}

}
