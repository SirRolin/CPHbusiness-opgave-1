int ite = 0;
float maxValue = 0;
color fillValue = color(255,255,0);
color tempFillValue = color(0,0,0);

void setup() {
  size(400, 400);
  int input;
  input = 20;
  PrintInputToZero(input);
  input = -12;
  PrintInputToZero(input);
}

void PrintInputToZero(int input) {
  ite = 0;
  maxValue = input;
  fillValue = color(255,255,0);
  for (int ite = input; ite != 0; ite -= input/abs(input)) {
    if (ite == (int) input / 2) {
      print("HALF! ");
      fillValue = color(0, 0, 255);
    }
    if (ite == 6) {
      println("six");
      tempFillValue = color(0, 255, 0);
    } else {
      println(ite);
    }
    DrawSquares(ite, (int) abs(maxValue));
    tempFillValue = color(0, 0, 0);
  }
}


void DrawSquares(int input, int amountOfValues) {
  fill(fillValue);
  if(tempFillValue!= color(0)) fill(tempFillValue);
  rect(ite*width/amountOfValues, height/2, width/amountOfValues, -(abs(input)/maxValue)*(height/2));
  ite++;
}
