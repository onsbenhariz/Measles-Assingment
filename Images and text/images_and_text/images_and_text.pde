//Global Variable
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0, picWidthAdjusted1, picHeightAdjusted1;
Boolean widthLarger1=false, heightLarger1=false;
PImage image;
String text = "Brooklyn 99";
PFont titleFont;
color yellow=#EEF20A, resetDefaultInk= #FFFFFF;//not nightMode friendly
int titleSize;
// 
void setup() {
  //CANVAS
  size (800, 800); //Landscape
  //
 //Population of Image
 String[] fontList = PFont.list(); 
 printArray(fontList); 
 titleFont = createFont("Bell MT Italic", 55); 
   image= loadImage("ImagesUsed/meme.jpg"); 
int picWidth1 = 800; 
int picHeight1 = 800; 
//
if ( picWidth1 >= picHeight1 ) { 
  imageLargerDimension1 = picWidth1;
  imageSmallerDimension1 = picHeight1;
  widthLarger1 = true;
} else {
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;
  heightLarger1 = true;
}

println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); 
if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;

imageX1 = (width-1)*1/2;
imageY1 = height*0;
imageWidth1 = (width-1)*1/2; 
imageHeight1 = (height-1)*1/2;

picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;
picHeightAdjusted1 = imageHeight1 * imageHeightRatio1;
println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1); 
  //
  image(image, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
  //
}//End setup
void draw() {
  //
  fill(yellow); 
  textAlign( CENTER, CENTER); 
  titleSize = 50; 
  textFont(titleFont, titleSize);
  text( text,imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
  fill(resetDefaultInk);
}//End draw
//
void keyPressed() {
  rect(0, 0, width, height);
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
