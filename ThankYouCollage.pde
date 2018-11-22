//add modern art code here
PImage ludo1;
PImage issa1;
PImage iro;
//PImage juddy;

float bubble = random(-4, 4);
float X = 200;
float Y = 80;
float X2 = 100;
float Y2 = 190;


void setup() {
  size(600, 500);
  frameRate(5);
  ludo1 = loadImage("ludo.head1.png");
  issa1 = loadImage("issa.head1.png");
  iro = loadImage("iro.png");
  //juddy = loadImage("juddy.png");
}

void draw() {
  background(174, 183, 200);

  //iro iro
  image(iro, 470, 220, 216, 288);
  

  //issa head
  imageMode (CENTER);
  image(issa1, X2, Y2, 110, 110);
  X2=X2+random(-2, 7);
  Y2=Y2+random(-10, 5);
  if (Y2<160) {
    Y2=240;
  }
  if (X2>200) {
    X2=60;
  }

  //ludo head
  
  imageMode (CENTER);
  image(ludo1, X, Y, 140, 140);
  
  X=X+random(-10, 5);
  Y=Y+random(-2, 4);
  if (X<80) {
    X=160;
  }
  if (Y<100) {
    Y=180;
  }

  //hiding box
  pushMatrix();
  translate(0, mouseY-380);
  noStroke();
  box1();
  popMatrix();



  //noodles
  stroke(255, 255, 179);
  strokeWeight(7);
  line(270, 500, 270, mouseY);
  line(280, 500, 280, mouseY-40);
  line(280, 500, 292, mouseY-15);




  //chopsticks
  pushMatrix();
  translate(200, mouseY-200);
  hashi();
  popMatrix();

  //"S" for steam
  noStroke();
  textSize(95);
  String s = "sSs";
  fill(random(207, 255), random(100, 215));
  text(s, 195, 407);


  //bowl
  noStroke();
  fill(230);
  rect(240, 480, 60, 20, 5);
  fill(255);
  arc(270, 388, 200, 200, radians(0), radians(180));
}

void hashi()
{
  //hashi2
  strokeWeight(10);
  stroke(136, 82, 0);
  line(50, 200, 300, 160);
  line(50, 200, 300, 165);

  ////hashi2 shadow
  //strokeWeight(5);
  //stroke(129, 67, 0);
  //line(50, 202, 300, 166);


  //ramen hook 1
  stroke(255, 255, 179);
  strokeWeight(7);
  noFill();
  arc(56, 196, 30, 80, radians(250), radians(369));

  //ramen hook 2
  stroke(255, 255, 179);
  strokeWeight(7);
  noFill();
  arc(102, 195, 20, 80, radians(175), radians(329));
  line(80, 170, 80, 230);




  //hashi2
  strokeWeight(10);
  stroke(153, 102, 51);
  line(50, 185, 305, 195);
  line(50, 185, 305, 200);
}

void box1()
{
  fill(174, 183, 200);
  rect(390, 0, 260, 400);
  rect(390, 30, 80, 400);
}  
