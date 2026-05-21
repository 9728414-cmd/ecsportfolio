// Almas Alzahrani | 26 Mar 2026 | Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;
int totalTime = 10;
int startTime = 0;
int timeLeft = 0;
boolean running = false;

void setup() {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.mp3");
  btnStart = new Button(90, 100, 100, 30, "Start", color(#A04269), color(#7E254A));
  btnStop = new Button(400, 100, 100, 30, "Stop", color(#A04269), color(#7E254A));
  btnReset = new Button(250, 100, 100, 30, "Reset", color(#A04269), color(#7E254A));
  timeLeft = totalTime;
}

void draw() {
  background(#FFE8F2);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      alarm.play();
    }
  }

  btnStart.display();
  btnStart.hover();
  btnStop.display();
  btnStop.hover();
  btnReset.display();
  btnReset.hover();
  fill(#C65E8A);
  textSize(30);
  text("By Almas Alzahrani", width/2, 450);
  fill(#FFFFFF);
  rect(width/2, height/2, width-100, 180, 8);
  textSize(100);
  fill(80);
  text(timeLeft, width/2, 280);
  
}

void mousePressed() {
  if(btnStart.over == true) {
    running = true;
    startTime = millis();
    
  }
  if(btnReset.over == true) {
    timeLeft = 0;
  }
  if(btnStop.over == true) {
    running = false;
  }
}
