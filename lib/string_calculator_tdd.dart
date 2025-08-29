int add(String numbers) {
  if(numbers.isEmpty) {
    return 0;
  } else {
    final numberList = numbers.split(',').map((e) => int.tryParse(e) ?? 0).toList();
    return numberList.reduce((a, b) => a + b);
  } 
}
