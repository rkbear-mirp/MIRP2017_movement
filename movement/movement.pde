int displayWidth=500, displayHeight=500;

float MAX_VELOCITY = 10;

float bgColor = 255;

float gravity = 0;
float ballX, ballY;
float ballVx = 100, ballVy = -200;
float ballRadius = 10;
color ballColor = color(100, 180, 70, 150);

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd';
boolean up, left, right;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/36;
  ballY=displayHeight/2;
  ballVx = 100;
  ballVy = 200;
}

void draw() {
  background(bgColor);
  detectKeys();
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}