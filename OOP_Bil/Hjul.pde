class hjul{
  float x;
  float y;
  float w = 16;
  
  
  hjul(float _x, float _y){
  x = _x;
  y = _y;
  
  }
  
  void display(){
    fill(0);
    stroke(255);
    circle(x,y,w);
    stroke(0);
    
  }
  
  
}
