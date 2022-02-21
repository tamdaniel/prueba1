float rojo = 27;
float verde = 135;
float azul  = 191;
int x = 20;
int y = 250;
int diam = 100;
int velX = 5;
int velY = 5;
void setup(){
//fullScreen();
size (500,700);  // tamaño de 500 px x 700 px
background (0);
surface.setTitle("Ej3");
noStroke();
}

void draw (){
 
  //background (0);
  fill(rojo,verde,azul,15);
  rect(0,0,width,height);
  
  fill(255-rojo, 255-verde, 255-azul);
  circle(x,y,diam);
 x = x + velX; 
 y = y + velY;
 
 if (x < 0 || x > width ) {
   velX= -velX; 
   
   if (y < 0 || y > width){
     velY = -velY;
   }
   
 
 }
}

void mousePressed(){
rojo = random (100, 255);
verde = random (255);
azul = random (255);

}

void keyPressed (){
  if (key == 's'){ // == operador  
  saveFrame("bolita###.jpg");
  }
 
 else if (key == 'e' ){
    exit ();
    
 }  
}
