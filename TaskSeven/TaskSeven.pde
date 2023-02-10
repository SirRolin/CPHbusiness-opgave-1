void setup() {
  int input;
  input = 12;
  PrintInputToZero(input);
  input = -12;
  PrintInputToZero(input);
}

void PrintInputToZero(int input) {
  for (int ite = input; ite != 0; ite -= input/abs(input)) {
    if (ite == (int) input / 2) {
      print("HALF! ");
    }
    if (ite == 6) {
      println("six");
    } else {
      println(ite);
    }
  }
}
