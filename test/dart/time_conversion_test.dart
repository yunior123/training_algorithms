import 'package:test/test.dart';
import 'package:training_algorithms/dart/time_conversion.dart';

void main() {
  test(
    'time conversion ...',
    () async {
      final result = timeConversion("12:01:00AM");
      print(result);
    },
  );
}
