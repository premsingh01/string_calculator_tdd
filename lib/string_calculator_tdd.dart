int add(String numbers) {
  if(numbers.isEmpty) {
    return 0;
  } else {
    return int.tryParse(numbers) ?? 0;
  } 
}
