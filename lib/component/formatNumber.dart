// ignore_for_file: file_names

String formatNumber(int number) {
  String formattedNumber = number.toString();
  String result = '';
  int count = 0;
  for (int i = formattedNumber.length - 1; i >= 0; i--) {
    result = formattedNumber[i] + result;
    count++;
    if (count == 3 && i != 0) {
      result = '.$result';
      count = 0;
    }
  }
  return result;
}
