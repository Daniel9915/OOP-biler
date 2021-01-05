class lygte{
  float x;
  float y;
  float s = 7;
  
  lygte(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void display(){
   fill(255,255,0);
   rect(x,y,s,s); 
  }
  
}
