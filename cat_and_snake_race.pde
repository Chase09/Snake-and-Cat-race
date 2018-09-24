PImage cat;//Cat image//
PImage snake;//Snake image//
int catY = 29;
int snakeY = 29;





void setup()
{
  fullScreen();//The screen is fullscreen//
  cat = loadImage("cat.jpg");//This loads the cat image//
  snake = loadImage("snake.png");//this Loads the snake image//
}
boolean a = false;

void draw()
{
  background(0);//This makes the background black//
  imageMode(CENTER);
  image(cat,50,catY,230,190);//These are the coordinates for the image//
  image(snake,2500,snakeY,230,190);//these are the coordinates for the image//
  
  if (catY>=1500)
  {
    textSize(100);//Size of the text//
    text("Cat Wins!",1000,1000);//The message Cat Wins will appear//
    a = true;
  }

  if (snakeY>=1500)
  {
    textSize(100);//Size of the text//
    text("Snake Wins!",1000,1000);//The message Snake Wins will appear//
    a = true;
   
  }
  if (a)
  {
    noLoop();
  }
}




void keyPressed()
{
  if(key == 'q')//When you press q the cat will move down//
  {
    catY = catY+30;
  }
  if(key == 'p')//When you press p the snake will move//
  {
    snakeY = snakeY+30;
  }
}
