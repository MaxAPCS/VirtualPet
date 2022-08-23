final int[] dims = new int[]{400, 900};
void setup() {
  size(400, 900);
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
  textFont(loadFont("grotesque-becker.ttf"), 128);
  text("HAL 9000", 44, 44);
  
  fill(20, 20, 20);
  ellipse(dims[0]/2, dims[1]/2+50, dims[0]-70, dims[0]-70);
  
  int radius = dims[0]-80;
  while (radius > 0) {
    fill(lerpColor(0x88ff1000, 0xff000000, (float)(--radius+gradsize)/(dims[0]-80)));
    ellipse(dims[0]/2, dims[1]/2+50, radius, radius);
  }
  
  fill(40,40,40);
  rect(20, dims[1]-180, dims[0]-40, 160, 0, 0, 5, 5); 
}
