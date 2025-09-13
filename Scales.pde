void setup(){
  size(1000,1000);
}

void scales(int x, int y, int size){
fill((int)(Math.random()*10),(int)(Math.random()*10),(int)(Math.random()*10));
beginShape();
curveVertex(x,y-(200/size));
curveVertex(x,y-(200/size));
curveVertex(x-(75/size),y-(100/size));
curveVertex(x-(200/size),y);
curveVertex(x-(75/size),y+(100/size));
curveVertex(x,y+(200/size));
curveVertex(x,y+(200/size));
endShape();
beginShape();
curveVertex(x,y-(200/size));
curveVertex(x,y-(200/size));
curveVertex(x+(75/size),y-(100/size));
curveVertex(x+(200/size),y);
curveVertex(x+(75/size),y+(100/size));
curveVertex(x,(y+200/size));
curveVertex(x,(y+200/size));
endShape(); 
}

void draw() {
  try {
  Thread.sleep(100);
  } catch (InterruptedException e) {
    Thread.currentThread().interrupt();
  }
  for(int x = 0; x <= 1000; x +=50)
  {
    for(int y = 0; y <= 1000; y +=70)
    {
      scales(x,y,3);
    }
  }
}
