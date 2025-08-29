int add(String numbers) {
  if(numbers.isEmpty) {
    return 0;
  } else {
    String delimeter = ',|\n';
    if(numbers.startsWith("//")) {
      final part = numbers.split("\n");
      delimeter = part.first.substring(2);
      numbers = part.last;
    }
    final numberList = numbers.split(RegExp(delimeter)).map((e) => int.tryParse(e) ?? 0).toList();
    final List negativeNumberList = numberList.where((element) => element<0).toList();
    if(negativeNumberList.isNotEmpty) {
      throw Exception("Negative Number not allowed: ${negativeNumberList.join(", ")}");
    }
    return numberList.reduce((a, b) => a + b);
  } 
}
