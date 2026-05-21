// Almas Alzahrani | 3 Mar 2026 | ShapeGame
int x, y, tx, ty, score;
float tw;
PImage person, object; 

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  score = 0;
  tw = 100.0;
  person = loadImage("person.png");
  object = loadImage("object.png"); 
}

void draw() {
  background(#FFF2F2);
  //ellipse(x, y, 20, 20);
  imageMode(CENTER);
  image(person, x, y);
  object();
  scorePanel();
}

void scorePanel() {
  fill(120, 127, 127, 127);
  rect(width/2, 15, width, 30);
  fill(#B2FFF8);
  textSize(20);
  text("Score:" + score, 14, 23);
}

void object() {
  float d = dist(x, y, tx, ty);
  println(d);
  println(score);
  rectMode(CENTER);
  image(object, tx, ty, tw, tw);
  if(d <tw) {
    score = score + 20;
    tx = int(random(20, width-20));
    ty = int(random(20, height-20));
    tw = 100.0;
  }
  tw = tw - 0.1;
  if(tw <= 10) {
    gameOver();
  }
 
}
void gameOver () {
  background(0);
  fill(255);
  text("Game Over", width/2, height/2);
}

void keyPressed() {
  if (y<0) {
    y = height;
  }
  if (y>height) {
    y = 0;
  }
  if (x<0) {
    x = width;
  }
  if (x>width) {
    x = 0;
  }





  if (key == 'w' || key == 'W') {
    y = y - 10;
  } else if (key == 's' || key == 'S') {
    y = y + 10;
  } else if (key == 'a' || key == 'A') {
    x = x - 10;
  } else if (key == 'd' || key == 'D') {
    x = x +10;
  }
}
