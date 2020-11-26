class Wheel{
  float x;
  float y;
  float w = 10;
  float h = 10;
  
  
  
  void display( float carX,float carY, float carW, float carH, float carSpeed){
    float newCarX = carX/4;
    float newCarH = carH/2;
    
    x = carX-newCarX;
    y = carY-newCarH;
    
    fill(#333333);
    rect(x=x+carSpeed,y=y+carSpeed,w,h);
    rect(x,y,w,h);
    rect(x,y,w,h);
    rect(x,y,w,h);
  }
  
  
}
