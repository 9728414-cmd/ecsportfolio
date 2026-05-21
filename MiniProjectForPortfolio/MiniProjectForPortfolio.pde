// Almas Alahrani | 31 Mar 2026 | Click the target
int x, y, tx, ty, score;
float tw;
PImage target; 

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  score = 0;
  tw = 100.0;
  target = loadImage("target.png");
}

void draw() {
  background(#FFF2F2);
  imageMode(CENTER);
  target();
  scorePanel();
}

void scorePanel() {
  fill(120, 127, 127, 127);
  rect(width/2, 15, width, 30);
  fill(#B2FFF8);
  textSize(20);
  text("Score:" + score, 14, 23);
}

void target() {
  float d = dist(x, y, tx, ty);
  println(d);
  println(score);
  rectMode(CENTER);
  image(target, tx, ty, tw, tw);
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

void mousePressed() {
   float d = dist(tx, ty, mouseX, mouseY);
  println(d);
  println(score);
  rectMode(CENTER);
  image(target, tx, ty, tw, tw);
  if(d <10) {
    score = score + 20;
    tx = int(random(20, width-20));
    ty = int(random(20, height-20));
  }
  tw = tw - 0.1;
  if(tw <= 10) {
    gameOver();
  }
}
