import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  test('Should get 0 in case of empty string', () {
    expect(add(''), 0);
  });
  test('Should get 1 in case of string is 1', () {
    expect(add('1'), 1);
  });
  test("Should get 6 in case string is 1,5", () {
    expect(add("1,5"), 6);
  });
  test("Should get 6 in case string is 1\n2,3", () {
    expect(add("1\n2,3"), 6);
  });
}
