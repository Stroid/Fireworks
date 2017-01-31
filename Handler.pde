class Handler {
  ArrayList<Ball> handler;

  public Handler() {
    handler = new ArrayList();
  }

  public void add(Ball ball) {
    this.handler.add(ball);
  }

  public void remove(Ball ball) {
    this.handler.remove(ball);
  }

  public void update() {
    for (int I = 0; I < handler.size(); I++) {
      this.handler.get(I).update();
    }
  }
  public void render(){
    for (int I = 0; I<handler.size(); I++){
      this.handler.get(I).render();
    }
  }
}