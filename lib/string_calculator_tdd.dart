int add(String numbers) {
  if(numbers.isEmpty) {
    return 0;
  } else {
    String delimeter = '';
    if(numbers.startsWith("//")) {
      final part = numbers.split("\n");
      delimeter = part.first.substring(2);
      numbers = part.last;
    }    
    final numberList = numbers.split(RegExp(',|\n|$delimeter')).map((e) => int.tryParse(e) ?? 0).toList();
    return numberList.reduce((a, b) => a + b);
  } 
}
