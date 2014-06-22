class Walker{
  float x;
  float y;
  float tx;
  float ty;

  Walker(){
    x = width/2;
    y =  height/2;
    tx = random(1000);
    ty = random(1000);
  }

  void step(){
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height)

    tx += 0.01;
    ty += 0.01;
  }

  void display(){
    stroke(0);
    point(x, y);
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
