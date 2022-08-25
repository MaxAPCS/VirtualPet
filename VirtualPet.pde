import java.util.Random;

final int[] dims = new int[]{400, 900};
PFont font;
Random rd;
void setup() {
  size(400, 900);
  rd = new Random();
  font = createFont("grotesque-becker.ttf", 1);
}

final int topheight = 80;
int gradsize = 80;
void draw() {
  background(20, 20, 20);
  noStroke();
  fill(0,0,0);
  rect(20, 20, dims[0]-40, dims[1]-220, 15, 15, 0, 0);
  fill(255, 255, 255);
  rect(40, 40, dims[0]-80, topheight);
  fill(0,0,0);
  rect(44, 44, dims[0]-88, topheight-8);
  fill(0xff009bdc);
  rect(44, 44, (dims[0]-88)/2, topheight-8);
  fill(0xffffffff);
  textFont(font, 80);
  textAlign(CENTER, TOP);
  text("HAL 9000", (dims[0]-88)/2+55, 28);
  
  fill(30, 30, 30);
  ellipse(dims[0]/2, dims[1]/2+50, dims[0]-70, dims[0]-70);
  
  int radius = dims[0]-80;
  while (radius > 0) {
    fill(lerpColor(0x88ff1000, 0xff000000, (float)(--radius+gradsize)/(dims[0]-80)));
    ellipse(dims[0]/2, dims[1]/2+50, radius, radius);
  }
  
  fill(40,40,40);
  rect(20, dims[1]-180, dims[0]-40, 160, 0, 0, 5, 5);
  
  final int rad = 10;
  final int stro = 3;
  fill(10, 10, 10);
  for (int y = dims[1]-180 + rad/2; dims[1]-180 <= y && y < dims[1]-20; y+=rad*1.5) {
    for (int x = 20 + rad/2; 20 <= x && x < dims[0]-20; x+=rad*1.5) {
      ellipse(x, y, rad, rad);
    }
    stroke(0xff111111);
    strokeWeight(stro);
    line(20+stro/2, y+rad*0.75, (dims[0]-20)-stro*0.75, y+rad/2);
    noStroke();
  }
  
  gradsize += (gradsize > 80 ? -1 : (gradsize < 20 ? 1 : (rd.nextBoolean() ? 1 : -1))) * Math.random()*10;
}
