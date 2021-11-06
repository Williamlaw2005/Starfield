
Particle[] bruh = new Particle[500];
void setup()
{

  noStroke();
  size(800,800);
  for(int i  = 0; i < 250; i++)
   bruh[i] = new Particle();
  for(int i = 250; i < bruh.length;i++)
   bruh[i] = new OddballParticle();
}
void draw()
{
   fill(50,50,50,10);
   rect(0,0,1000,1000);
  for(int i = 0; i < bruh.length; i++){
    bruh[i].menu();
    bruh[i].move();
    bruh[i].show();
  }
}


class Particle
{
 
  double myX,myY,myAngle,mySpeed; 
  int myColor;
  
  Particle(){
    myX =  400;
    myY =  400;
    myAngle = (float)(Math.random()*10);
    mySpeed = (float)(Math.random()*5);
    if(Math.random() < .3)
      myColor = color((int)(Math.random()*100)+155);
    else
      myColor = color(0,0,(int)(Math.random()*100)+155);
  }
  void move(){
   /*if(myX > 800 || myY > 800 || myX < 0 || myY < 0){
   myX = (Math.random()*200)+300;
   myY = (Math.random()*200)+300;
   }
   */
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
   
  
   
  }
  void show(){
     
    fill(myColor);
    ellipse((float)myX, (float)myY,5,5);
  }
  void menu(){
   
    
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX =  400;
    myY =  400;
    myAngle = (float)(Math.random()*10);
    mySpeed = (float)(Math.random()*5);
    if(Math.random() < .3)
      myColor = color(#FFA500);
    else
      myColor = color(#00B7EB);
  }
  
}

