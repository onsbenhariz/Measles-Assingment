//Global Variables
color resetWhite=#FFFFFF, red=#d61b18; //similar to int declaration
color green=#08761B;
color skin=#D8B114;
color backgroundColour;
color pink=#64001E, yellow=#9DA000, resetButtonColour=#FFFFFF, buttonFill;
int thack=50;
Boolean nightMode=false;
float   measlesy;
PImage pic1, pic2,pic3;
String text = "X";
PFont titleFont;
color purple=#000000, resetDefaultInk= #FFFFFF;//not nightMode friendly
int titleSize;




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
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //X&Y Measles  Random Postioning
  fill(skin);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
  
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont = createFont("Bell MT Italic", 55);
//
}//End setup
//
void draw() 
{
  image(pic1, 590,150, width/4, height/2);
  image(pic2, 20,150, width/4, height/2);
  image(pic3,100,430,width*8/10,height*1.25);
  
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
  //QUIT BUTTON HOVER OVER
   if (mouseX>xbyeButton && mouseX<xbyeButton+byeButtonWidth && mouseY>ybyeButton&& mouseY<ybyeButton+byeButtonHeight) {
    buttonFill = pink;
  } else {
    buttonFill = yellow;
     
    fill(buttonFill); //2-colours to start, remember that nightmode adds choice
    rect(xbyeButton, ybyeButton ,byeButtonWidth ,byeButtonHeight);
    fill(resetButtonColour);
    //END QUIT BUTTON
  //HAT
  fill(green);
  noStroke();
  rect( xCenter-faceRadius, 0, 2*faceRadius, smallerDimension/4, 50 );
  stroke(1);
   fill(resetWhite);}
  //End HAT
  
  
  fill(purple); //This is for Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X+Y, see Processing.org/ Reference//
  //Values: [LEFT | CENTER | RIGHT] & (TOP | CENTER | BOTTOM | BASLINE]
  titleSize = 50; //Chnage this number until it fits
  textFont(titleFont, titleSize);
  text( text, xbyeButton, ybyeButton ,byeButtonWidth ,byeButtonHeight);
  fill(resetDefaultInk);
  //triangle(xTopRight1, yTopRight1, xTopRight2, yTopRight2, xTopRight3, yTopRight3);
}//End draw
//











void keyPressed() 
{ if (key=='q' || key=='Q') exit();
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
  if  (mouseX>xbyeButton && mouseX<xbyeButton+byeButtonWidth && mouseY>ybyeButton&& mouseY<ybyeButton+byeButtonHeight) exit();
    


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
