
//// Test a and b for either summing to 10 or being 10.
int a = (int) random(10), b = (int) random(10);
//int a = 5, b = 5;
println("a:" + a + ". b:" + b + ".");
if(a == 10 || b == 10 || a + b == 10){
  println("Success!");
} else {
  println("Failure!");
}

//// Test min and max if they sum over 10 but one of them is 5 or under.
int min = (int) random(10), max = (int) random(10);
//int min = 5, max = 15;
println("min:" + min + ". max:" + max + ".");
if(min + max > 10 && Math.min(min, max) <= 5){
  println("Success!");
}

//// Test x, y and z if they sum to 30, without any of them being 10, 20 or 30.
//int x = (int) random(30), y = (int) random(30), z = (int) random(30);
int x = 16, y = 9, z = 5;
println("x:" + x + ". y:" + y + ". z:" + z + ".");
if(x % 10 != 0 && y % 10 != 0 && z % 10 != 0 && x + y + z == 30){
  println("Success!");
} else {
  println("Failure!");
}
