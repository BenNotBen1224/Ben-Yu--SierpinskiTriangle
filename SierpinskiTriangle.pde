public void setup(){
  size(800, 800);
}

float t = 0;
public void draw(){
  background(235);
  translate(400, 400);
  t = t + PI/96;
  rotate(t + PI);
  Sierpinski(0, 0, 600);
  rotate(-1 * PI);
  Sierpinski(0, 0, 600);
}

public void Sierpinski(float x, float y, int length){
  //x, y loacates midpoint of triangle
  //length = side length
  
  if(length <= 25){
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    triangle(x - length/2, y + (float)Math.sqrt(3)*length/6,
             x, y - (float)Math.sqrt(3)*length/3,
             x + length/2, y + (float)Math.sqrt(3)*length/6);
  }
  else if(mousePressed){
     Sierpinski(x - length/4, y + (float)Math.sqrt(3)*length/12, length/2); //left-bottom
     Sierpinski(x + length/4, y + (float)Math.sqrt(3)*length/12, length/2); //top
     Sierpinski(x, y - (float)Math.sqrt(3)*length/6, length/2); //right-bottom
    }
}

/*
public void DownSierpinski(float x, float y, int length){
  //x, y loacates midpoint of triangle
  //length = side length
  
  if(length <= 20){
    
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    triangle(x - length/2, y - (float)Math.sqrt(3)*length/3, //left-top
             x, y + (float)Math.sqrt(3)*length/6, //bottom
             x + length/2, y - (float)Math.sqrt(3)*length/3); //right-top
  }
  else if(mousePressed){
     DownSierpinski(x - length/4, y - (float)Math.sqrt(3)*length/6, length/2); //left-top
     DownSierpinski(x + length/4, y - (float)Math.sqrt(3)*length/6, length/2); //bottom
     DownSierpinski(x, y + (float)Math.sqrt(3)*length/12, length/2); //right-top
    }
}
*/
    else
      triangle(x - length/2, y + length/2, //left-bottom
               x, y - 2*length/2, //top
               x + length/2, y + length/2); //right-bottom
}
