String numberToWord(int number) {
  final words = [
    'First', 'Second', 'Third', 'Fourth', 'Fifth',
    'Sixth', 'Seventh', 'Eighth', 'Ninth', 'Tenth',
    'Eleventh', 'Twelfth', 'Thirteenth', 'Fourteenth', 'Fifteenth',
    'Sixteenth', 'Seventeenth', 'Eighteenth', 'Nineteenth', 'Twentieth'
  ];

  if (number <= 20) {
    return words[number - 1];
  }

  final tens = [
    '', '', 'Twenty', 'Thirty', 'Forty',
    'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'
  ];

  int ten = number ~/ 10;
  int unit = number % 10;

  String tensWord = tens[ten];
  String unitWord = unit > 0 ? numberToWord(unit) : '';

  return '$tensWord${unitWord.isNotEmpty ? '-$unitWord' : ''}';
}