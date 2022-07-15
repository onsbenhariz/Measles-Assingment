//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, yLeftEye, eyeDiameter;
float xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Population
  xFace = width/2 ;
  yFace = height/2;
  
  float smallerDimension;
  if (width >= height) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  //
  float xCenter = width/2
  float yCenter = height/2
  xLeftEye = xCenter- width*1/4;
  yLeftEye =xCenter+ height*1/4;
  eyeDiameter = width;
  xRightEye =width+1/2 ;
  yRightEye = width+1/2;
  xNoseBridge = ;
  yNoseBridge = ;
  xLeftNostril = ;
  yLeftNostril = ;
  xRightNostril = ;
  yRightNostril = ;
  xLeftMouth = ;
  yLeftMouth = ;
  xRightMouth = ;
  yRightMouth = ;
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
