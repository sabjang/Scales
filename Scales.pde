void setup(){
  size(500, 500);
  noLoop();
}

void draw(){  
  boolean shift = true;
  for(int y=550; y>=-20; y-=30){
    for(int x=500; x>=-10; x-=30){
      if(shift == true)
        scale(x-20, y);
      else
        scale(x, y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y){
  noStroke();
  int r = 255 - (int)(Math.random()*101);
  int b = 255 - (int)(Math.random()*101);
  fill(r, 0, b);
  ellipse(x+20, y+20, 40, 40);
  rect(x, y, 40, 20);

}
