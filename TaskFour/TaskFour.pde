//// Declare 2 iteration variables for later use.
int ite, start;

//// Count form 0 to 20
println("From 0 to 20.");
for(ite = 0; ite <=20; ite++) {
  print(ite + " ");
}
println(""); //new line.

//// Count from 0 to 20 only using the even numbers
println("Only evens now.");
for(ite = 0; ite <=20; ite+=2){
  print(ite + " ");
}
println(""); //new line.

//// Count down from the start variable and take off
println("Countdown.");
start = 8;
for(ite = start; ite > 0; ite--){
  println(ite);
  delay(1000);
}
println("Take Off!");
println(""); //new line.

//// Count from 0 to 20 only using the even numbers, now in a while loop
println("Even Counting. with a while loop.");
ite = 0;
while(ite <= 20){
  print(ite + " ");
  ite+=2;
}
println(""); //new line.

//// Count down from the start variable and take off, now in a while loop
println("Countdown. with a while loop.");
start = 8;
ite = start;
while(ite > 0){
  println(ite);
  delay(1000);
  ite--;
}
println("Take Off!");
