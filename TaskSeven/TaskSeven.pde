int input;
void setup(){
  input = 20;
  PrintInputToZero(input);
  input = -20;
  PrintInputToZero(input);
}

void PrintInputToZero(int input){
  for(int ite = input; ite != 0; ite -= input/abs(input)){
    if(ite == (int) input / 2) {
      println("HALF!"); 
    } else if(ite == 6) {
      println("six");
    } else {
      println(ite);
    }
  }
}
