// Almas Alzahrani | 26 Feb 2026 | Timeline

void setup() {
  size(950, 450);
}
void draw() {
  background(#0A0979);
  drawRef();
  histEvent(100, 200, "June. 1949", true, "Mohammed Abduwas born in Jazan, Saudi Arabia ");
  histEvent(200, 300, "Dec. 1960", false, "Discovered by Abbas Faiq Ghazzawi & Taher Zamakhshari, \n began singing on the Baba Abbas radio program.");
  histEvent(300, 200, "1964", true, "Graduated from the Industrial Institute in Jeddah and began \n his professional music career, transitioning from shipbuilding \n studies to music in Beirut.");
  histEvent(400, 300, "Mar. 1966", false, "Released his first album and solidified his fame.");
  histEvent(500, 200, "1989-1997", true, "Took a major hiatus from releasing albums \n due to the death of his mother.");
  histEvent(600, 300, "Jul-Aug. 1998", false, "Made a massive comeback with a National Day concert in Saudi Arabia, \n followed by performances in London and new album releases.");
  histEvent(700, 200, "2011", true, "He remarried a French woman of Algerian origin \n following a stay in France");
  histEvent(800, 300, "Sep. 2021", false, "MohammedAbdu performed at the opening ceremony of \n Expo 2020 in Dubai, UAE.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(#DADAF0);
  text("Mohammed Abdu: Timeline", width/2, 65);
  textSize(18);
  text("by Almas Alzahrani", width/2, 90);
  strokeWeight(3);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  line(width/2, 245, width/2, 255);
  text("1940", 50, 280);
  text("2026", 900, 280);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-15, y+50);
  } else {
    line(x, y, x-15, y-50);
  }
  rectMode(CENTER);
  fill(#E0F0FF);
  rect(x, y, 100, 30, 10);
  fill(0);
  text(title, x, y+5);
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    fill(#FCFCFF);
    text(detail, width/2, 350);
  }
}
