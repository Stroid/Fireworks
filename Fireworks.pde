//Fireworks

color bgColor = color(0);

Handler handler;

void setup() {
  size(720, 720);

  handler = new Handler();

  for (int I = 0; I<3; I++) {
    handler.add(new Rocket((int) random(width), height+10, handler));
  }
}

void draw() {
  background(bgColor);

  handler.update();
  handler.render();
}