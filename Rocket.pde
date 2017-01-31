class Rocket extends Ball {
  PVector gravity;
  
  Handler handler;
  
  
  public Rocket(int x, int y, Handler handler) {
    super(x, y);
    
    this.handler = handler;
    
    gravity = new PVector(0,random(0.3,0.5));
    
    this.acc.add(new PVector(0,-20));
  }
  
  public void update(){
    super.update();
    
    acc.add(gravity);    
    
    if(vel.mag() < 1){
      handler.remove(this);
    }
    
    println(vel.mag());
  }
  
  
  
  
}