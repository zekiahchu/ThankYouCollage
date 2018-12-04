  PImage photo;
  PImage saw;
void setup() {
  size(500, 500);
  noStroke();
  saw = loadImage("Carbide-Saw-Blades.png");
  photo = loadImage("FDturkey2.png");
      rect(400,200,400,400);
      background(0);
           textAlign(CENTER);
      textSize(50);
      fill(255);
}

void draw() {
  background(0);
  if(mousePressed) {
    background(255,0,0);
     text("THANK YOU", 250,250);
  }else{
    fill(126);
      image(photo,mouseX-50, 250, 150, 200);
      image(saw,270,200,100,100);
      image(saw,270,250,100,100);
      image(saw,270,300,100,100);
      image(saw,270,350,100,100);
      image(saw,270,400,100,100);
       rect(300,200,400,400);
       quad(300,190,450,100,400,200,450,200);
       fill(0);
       textSize(20);
       text("hold left click",400,300); }
 
}
