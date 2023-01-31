public void setup()
{

}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{

}

public void setup(){
  size(800, 800);
}

public void draw(){
  Sierpinski(400, 400, 100);
}

public void Sierpinski(int x, int y, int length){
  //x, y loacates midpoint of triangle
  //length is side length
    color c = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    fill(c);
    if(mousePressed){
      Sierpinski(x - length/4, y + length/4, length/2);
      Sierpinski(x + length/4, y + length/4, length/2);
      Sierpinski(x, y - length/4, length/2);
    }
    else
      triangle(x - length/2, y + length/2, //left-bottom
               x, y - 2*length/2, //top
               x + length/2, y + length/2); //right-bottom
}
