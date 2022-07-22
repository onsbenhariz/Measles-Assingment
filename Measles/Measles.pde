//Global Variables
color resetWhite=#FFFFFF, red=#d61b18; //similar to int declaration
color green=#08761B;
color skin=#D8B114;
color backgroundColour;
int thack=50;
Boolean nightMode=false;
float   measlesy;
PImage pic1, pic2;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
   populatingVariables();
   //
  Boolean nightMode=true;
  color backgroundColour = (nightMode== true) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ); //ternary operator, similar to IF-Else
  background( backgroundColour);
  rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //X&Y Measles  Random Postioning
  fill(skin);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw() 
{
  image(pic1, 590,150, width/4, height/2);
  image(pic2, 20,150, width/4, height/2);
  ellipse (xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse (xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge,yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default),PROJECT
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1); //resets default

  
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension*1/4, smallerDimension); //if zero is first, then default
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/60, smallerDimension*1/45); //smallerDimension
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
  //mouth
  noFill();
  strokeWeight(10);
  arc(xMouth, yMouth, 300, 300, 0 + QUARTER_PI, PI - QUARTER_PI);
  
  
  
  
  //
  //HAT
  fill(green);
  noStroke();
  rect( xCenter-faceRadius, 0, 2*faceRadius, smallerDimension/4, 50 );
  stroke(1);
   fill(resetWhite);
  //End HAT
  //triangle(xTopRight1, yTopRight1, xTopRight2, yTopRight2, xTopRight3, yTopRight3);
}//End draw
//











void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) { //Night Mode FALSE
    backgroundColour = color( random(255), random(255), random(255) );
  background( backgroundColour);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Left Mouse Button
  if ( mouseButton == RIGHT ) { //Night Mode TRUE
  backgroundColour = color( random(255), random(255), 0 );
  background( backgroundColour);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /* For any button
   if ( nightMode == false ) { //NightMode Switch
   nightMode = true;
   } else {
   nightMode = false;
   } //End nightMode switch
   //ackgroundColour = (nightMode== true) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ); //ternary operator, similar to IF-Else
  background( backgroundColour);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  */
  //
}//End mousePressed
//
//End MAIN Program
