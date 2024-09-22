void setup() {
  size(508, 499);
  //noLoop();
}

void draw() {

  noLoop();
  background(0);
  //fill(1);
  //text(mouseX, 20, mouseX, 80);
  //text(mouseY, 80, mouseY, 80);


  // i will make a nested loop that repeatedly calls scale so that it draws a grid across the screen 
  

translate(-10, -5);

  for (int x = 0; x <= 500; x += 50) {
    
     
    for(int y = 0; y <= 500; y += 40) {
      
      
      scale(x, y);
    
    }
  }
}

void scale(int x, int y) { 
  int r = ((int)(Math.random()*256));
  int g = ((int)(Math.random()*256));
  int b = ((int)(Math.random()*256));


  noStroke();

  //fill this with a similar color to the the one for the bottom triangles
  fill(r, g, b);
  rect(x + 20, y + 20, 40, 30); 
  triangle(x + 20, y + 20, x + 10, y + 20, x + 20, y + 50); //left triangle
  triangle(x + 60, y + 20, x + 70, y + 20, x + 60, y + 50); //right triangle

  fill(0);
  strokeWeight(2);

  fill(r + 20, g + 20, b + 20);
  //fill these two with the same color
  //triangle(x + 20, y + 50, x + 40, y + 40, x + 60, y + 50); // bottom middle triangle
  triangle(x + 20, y + 50, x + 40, y + 60, x + 60, y + 50); //very bottom triangle

  //fill these with random colors
  fill(r + 35, g + 25, b + 28);
  triangle(x + 10, y + 20, x + 40, y + 40, x + 20, y + 50); //top left triangle
  triangle(x + 70, y + 20, x + 40, y + 40, x + 60, y + 50); //top right triangle



  //I am happy with this part for now ^^
}


