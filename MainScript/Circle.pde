class Circle{
  float xPos;
  float yPos;
  float offset;
  float radius;
  
  Circle(float x, float y){
    this.xPos = x;
    this.yPos = y;
    
    this.offset = map(pow(this.xPos,2)+pow(this.yPos,2), 0, pow(width/2,2)+pow(height/2,2), 0, PI);
  }
  
  void update(float t){
    this.radius = minRadius + (maxRadius-minRadius)*sin(t*frequency+this.offset);
  }
  
  void display(){
    noFill();
    stroke(0, 200);
    strokeWeight(3);
    ellipse(this.xPos, this.yPos, 2*this.radius, 2*this.radius);
  }
}
