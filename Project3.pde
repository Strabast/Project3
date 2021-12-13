PImage layer1,img;
void setup()
{
size(900,500,P2D);
layer1 = loadImage("monalisa.jpg");
layer1.loadPixels();
image(layer1, 0, 0);
}

void draw()
{  
imageMode(CENTER);

//Press key to copy a block from the picture, click to draw with it.
if(keyPressed){
    img = get(mouseX,mouseY,25,25);
  }

if(mousePressed){
    set(mouseX,mouseY,img);
  }
}
