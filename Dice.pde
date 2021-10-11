void setup(){
  size(500,500);
  noLoop();
}
Dice bob;
void draw(){
  background(255);
  int total = 0;
  for(int y = 0; y<= 400; y+=50){
    for(int x = 0; x <= 500; x+=50){
      bob = new Dice(x, y);
      bob.roll();
      bob.show();
      total+=bob.numDots;
    }
  }
  fill(0);
  text("Total: " + total, 225, 480);
}
void mousePressed(){
  redraw();
}
class Dice{
  int myX, myY;
  int numDots;
  Dice(int x, int y){
    myX = x;
    myY = y;
    numDots = 0;
  }
  void roll(){
    if(Math.random() < 0.166){
      numDots = 1;
    }
    else if(Math.random() < 0.333){
      numDots = 2;
    }
    else if(Math.random() < 0.5){
      numDots = 3;
    }
    else if(Math.random() < 0.666){
      numDots = 4;
    }
    else if(Math.random() < 0.833){
      numDots = 5;
    }
    else{
      numDots = 6;
    }
  }
  void show(){
    fill(30);
    rect(myX, myY, 50, 50);
    if(numDots == 1){
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if(numDots == 2){
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    else if(numDots == 3){
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    else if(numDots == 4){
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    else if(numDots == 5){
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else{
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
  }
}
