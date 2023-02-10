void setup() {
  methodOne();
  methodTwo();
}

/*
  The following method has an error in it. Fix the error and run it.
 */

void methodOne()
{
  int i = 1000; // You are not allowed to change this line.

  int max = 10;
  String output = "";

  if (i > max)
  {
    output = i + " is greater than "+max+".";
  }

  println(output);
}


/*
 Finish the following method so that we can change the number assigned
 to the weekday and it prints the correct output.
 */
void methodTwo()
{
  int weekDay = 0; // 0 = Monday, 6 = Sunday.
  boolean weekend = false;
  //// Weekdays names in an array
  String[] weekdays = {"Monday", "Tuesday", "Wednessday", "Thursday", "Friday", "Saturday", "Sunday"};

  if (weekDay < 5) {
    weekend = false;
  } else {
    weekend = true;
  }

  if (weekDay < 7) {
    // Print the name of the weekday here:
    print("It's " + weekdays[weekDay] + ", ");

    // Print if it is weekend here:
    println("It's " + (weekend?"weekend!":"not weekend") + ".");
  } else {
    println("Error " + weekDay + " is not a weekday, must be between 0 and 6");
  }
}
