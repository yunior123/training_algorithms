void fizzBuzz(final int n) {
  fizzBuzzRecursive(n, 1);
}

void fizzBuzzLoop(final int n) {
  var start = 1;

  while (start <= n) {
    if (start % 15 == 0) {
      print("FizzBuzz");
    } else if (start % 3 == 0) {
      print("Fizz");
    } else if (start % 5 == 0) {
      print("Buzz");
    } else {
      print(start);
    }
    start += 1;
  }
}

void fizzBuzzRecursive(final int n, final int start) {
  if (start > n) {
    return;
  }

  if (start % 15 == 0) {
    print("FizzBuzz");
  } else if (start % 3 == 0) {
    print("Fizz");
  } else if (start % 5 == 0) {
    print("Buzz");
  } else {
    print(start);
  }

  return fizzBuzzRecursive(n, start + 1);
}
