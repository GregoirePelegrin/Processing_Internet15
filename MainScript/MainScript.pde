ArrayList<Circle> circles;

float time;
float frequency;
float maxRadius;
float minRadius;

void setup(){
  size(600, 600);
  frameRate(30);
  
  circles = new ArrayList<Circle>();
  
  time = 0;
  frequency = 2;
  maxRadius = 50;
  minRadius = 20;
  
  for(int i=0; i<width/(minRadius*2); i++){
    for(int j=0; j<height/(minRadius*2); j++){
      Circle circle = new Circle(-width/2+2*i*minRadius, -height/2+2*j*minRadius);
      circles.add(circle);
    }
  }
}

void draw(){
  background(255);
  translate(width/2, height/2);
  
  for(Circle circle : circles){
    circle.update(time);
    circle.display();
  }
  
  time += 0.05;
}
