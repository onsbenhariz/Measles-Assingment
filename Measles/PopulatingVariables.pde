float xFace, yFace, widthDiameterFace, heightDiameterFace;
float yCenter;
float xLeftEye, yLeftEye, eyeDiameter;
float xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMouth, yMouth, mouthWidth, mouthHeight;
float xMeasle, yMeasle, measleDiameter;
float faceRadius, xCenter, smallerDimension;
float xTopRight1, yTopRight1, xTopRight2, yTopRight2, xTopRight3, yTopRight3;
float imageX1, imageY1, imageWidth1, imageHeight1;
float imageX2, imageY2, imageWidth2, imageHeight2;
float xbyeButton, ybyeButton ,byeButtonWidth ,byeButtonHeight;

void populatingVariables() 
{
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  pic1 = loadImage("ImagesUsed/rightear.png"); 
  pic2 = loadImage("ImagesUsed/leftear.png"); 
  pic3 = loadImage("ImagesUsed/scarf.png");
imageX1 = xCenter-faceRadius;
imageY1 = yCenter-smallerDimension*1/2;
//imageWidth1 = width/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
//imageHeight1 = height/2;
//imageX2 = width*0;
//imageY2 = height*1/2;
imageWidth2 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight2 = (height-1)*1/2;
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
  xMouth = xCenter ;
  yMouth = yCenter +smallerDimension*1/15 ;
  faceRadius = smallerDimension/2;
  xTopRight1 = xCenter-faceRadius;
  yTopRight1 = 0;
  xTopRight2 =xCenter ;
  yTopRight2 = 0 ;
  xTopRight3 = xCenter-faceRadius ;
  yTopRight3 = yCenter - smallerDimension*1/6 ;
  xbyeButton = xCenter + smallerDimension*1/2 ;
  ybyeButton = 0 ;
  byeButtonWidth = smallerDimension*1/10 ;
  byeButtonHeight = smallerDimension*1/10;
  //
}//End populatingVariables
