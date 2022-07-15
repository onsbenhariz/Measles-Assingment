//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, yLeftEye, eyeDiameter;
float xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Population
  float xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter ;
  yFace = yCenter;
  
  float smallerDimension;
  if (width >= height) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter - smallerDimension*1/6;
  yLeftEye = yCenter - smallerDimension*1/6 ;
  eyeDiameter = smallerDimension*1/6;
  xRightEye = xCenter + smallerDimension*1/6 ;
  yRightEye = yCenter - smallerDimension*1/6;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter - smallerDimension*1/10;
  xLeftNostril = xCenter - smallerDimension*1/10 ;
  yLeftNostril = yCenter + smallerDimension*1/10 ;
  xRightNostril =xCenter + smallerDimension*1/10;
  yRightNostril =yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter +smallerDimension*1/10;
  xRightMouth = xRightEye ;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/2;
  measleDiameter = smallerDimension*1/40;
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse (xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse (xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge,yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(0, smallerDimension);
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
