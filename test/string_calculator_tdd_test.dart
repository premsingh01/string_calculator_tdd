import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  test('Should get 0 in case of empty string', () {
    expect(add(''), 0);
  });
}
