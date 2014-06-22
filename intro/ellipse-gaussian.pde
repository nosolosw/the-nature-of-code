void setup(){
  size (600, 360);
  background(255);
}

void draw(){
  // num = between 0 and 1 following a random normal distribution
  float num = stats.polar();

  float sd = 60;
  float mean = 320;
  float x = num * sd + mean;

  noStroke();
  fill(0, 10);
  ellipse(x, 180, 16, 16);

}
