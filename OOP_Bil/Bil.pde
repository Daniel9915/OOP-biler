
class bil{
  
  float x;
  float y;
  float w = 60;
  float h = 30;
  float speed;
  color c;
  
  bil(float _x, float _y, float _speed, color _c){
    x = _x;
    y = _y;
    speed = _speed;
    c = _c;
  }
 
  void display(){
  displayHjul();
  displayBil();
  displayLygte();
  
  }
  
  void drive(){
  if(x<800){
  x = x + speed;
  }else{
  x = 1;
  }
  }  
  
  
  void displayBil(){
  fill(c);
  rect(x, y, w, h);
  }
  
  void displayHjul(){
  hjul hjul1 = new hjul(x-20,y-10);
  hjul hjul2 = new hjul(x+20,y-10);
  hjul hjul3 = new hjul(x-20,y+10);
  hjul hjul4 = new hjul(x+20,y+10);
  
  hjul1.display();
  hjul2.display();
  hjul3.display();
  hjul4.display();
  }
  
  void displayLygte(){
    lygte lygte1 = new lygte(x+25,y-10);
    lygte lygte2 = new lygte(x+25,y+10);
    
    lygte1.display();
    lygte2.display();
  }
  
}
