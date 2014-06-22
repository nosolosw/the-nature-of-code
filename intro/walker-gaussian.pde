class Walker{
  int x;
  int y;

  Walker(){
    x = width/2;
    y = height/2;
  }

  void display(){
    stroke(0);
    point(x, y);
  }

  int calculateStepSize(){
    float num = stats.polar();
    float sd = 1;
    float mean = 5;
    return num * sd + mean;
  }

  void step(){
    int stepSize = calculateStepSize();
    int stepx = (int(random(3))-1)*stepSize;
    int stepy = (int(random(3))-1)*stepSize;
    x += stepx;
    y += stepy;
  }

}


void setup(){
  size(600, 600);
  w = new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
}
