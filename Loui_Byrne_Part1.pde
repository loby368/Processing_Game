float x = 0;
float y = 0;
float c = 50; //Colour of backround


void setup(){
   size(800,600);
   ellipseMode(CENTER);
   rectMode(CENTER);
}
   
void draw() {
  
  //Adding a backround hides previous frames
  background(c);
  
  float dx = mouseX - x;
  x = x + dx * 0.1;
    
  float dy = mouseY - y;
  y = y + dy * 0.1;
  
  if (keyPressed == true) {
    fill(100,150,150);
  }
  
  if (mousePressed == true) {
    c = 200
    
    ; 
  }
  
  //ellipse(x,y,50,50); 
  
  //Change circle to square
  rect(x,y,50,50);
  

}
