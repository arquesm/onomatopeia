String[] simbols={"▀","▂","░", "▒","▓", "╱"};
PFont myfont;
void setup() {
  myfont= createFont("IBMPlexMono-Light.otf", 19);
  size(420, 595);
  textSize(23);
}

void draw() {
  textFont(myfont);
  textAlign(CENTER);
  //randomSeed(random(255));
  background(255);
  push();

  for (int i=0; i<10; i++) {
    push();
    translate(random(0, width), random(50, height/2));
    vent(200);
    pop();
  }
  pop();
  fill(0);
  for (int posy=height/3*2; posy<height-10; posy= posy+25) {
    for (int posx=40; posx<width-20; posx=posx+8) {
      push();
      translate(posx, posy);
      text(simbols[int(random(2))], 0, 0);
      //text("-", 0, 0);
      pop();
    }
  }
}
