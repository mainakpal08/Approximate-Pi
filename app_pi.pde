int count = 0 ;
float r = 200;//radious of the circle
double in_circle = 0;//count for the point lies in the circle
double in_square = 0;//total number of projected points

void setup() {
  size(500,500);
  
  background(0);
  translate(width/2,height/2);
  stroke(255);
  strokeWeight(1);
  noFill();
  ellipse(0,0,r*2,r*2);//required circle of radious r
  rectMode(CENTER);
  rect(0,0,r*2,r*2);//required square of side length 2r

}

void draw() {
    
  translate(width/2,height/2);  
  
  for (int i = 0; i<= 100000; i++){ 
  
  //projected point p(x,y)  
    
  float x = random(-r,r);
  float y = random(-r,r);
  
  in_square++;
  
  
  // condition: the point p(x,y) lies in the circle.If it satisfies the condition then the point will be green,otherwise it will be red 
  
  if ( ((double)x*(double)x+(double)y*(double)y) < (double)r*(double)r ) {
    stroke(0,255,0);
    in_circle++;
  } else  {
    stroke(255,0,0);
  }
  
  point(x,y);
  
  }
  double pi = (in_circle/in_square)*4;//estimate value of pi
  count++;
  
  if (count<150){
  println(pi);}
  
}
  
