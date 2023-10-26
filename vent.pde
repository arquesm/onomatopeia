void vent(float amplitud) {
  int i=0;
  float v;
  //200+cos(a)*160.0

  for (int posy=0; posy<height/2; posy=posy+8) {
    if (i<55) {
      float m=map(sin(i)*amplitud, -10, 10, -1, 1);
      push();
      translate(m, posy);
      i++;
      text(simbols[3], 0, posy);
      pop();
    }
  }
}
