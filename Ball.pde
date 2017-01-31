class Ball{

  PVector pos;
  PVector vel;
  PVector acc;

  float r;
  float d;

  color c;

  public Ball(float x, float y, float... r) {
    this.pos = new PVector(x, y);
    this.vel = new PVector();
    this.acc = new PVector();

    if (r.length > 0) {
      this.r = r[0];
    }else{
      this.r = 5;
    }
    this.d = this.r*2;

    c = color(255);
  }

  public void update() {
    this.vel.add(acc);
    this.pos.add(vel);
    this.acc.mult(0);
  }

  public void render() {
    fill(c);
    ellipse(this.pos.x, this.pos.y, this.d, this.d);
  }

  public void addForce(PVector force) {
    this.acc.add(force);
  }
}