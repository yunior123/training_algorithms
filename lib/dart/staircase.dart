// Staircase detail
// This is a staircase of size :
//    #
//   ##
//  ###
// ####
// Its base and height are both equal to .
// It is drawn using # symbols and spaces. The last line is not preceded by any spaces.
// Write a program that prints a staircase of size .

void staircase(final int n) {
  final range = List.generate(n, (final index) => index).reversed;
  for (final element in range) {
    final result =
        List.generate(n, (final index) => index < element ? ' ' : '#');
    print(result.join());
  }
}
