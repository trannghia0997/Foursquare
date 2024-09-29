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

/// Exact sum of a list of doubles
/// Use Neumaier algorithm to reduce the error in the total
double neumaierSum(Iterable<double> numbers) {
  double sum = 0.0;
  double c = 0.0;
  double tmp = 0.0;
  for (double number in numbers) {
    double t = sum + number;
    if (sum.abs() >= number.abs()) {
      tmp = sum - t;
      c += tmp + number;
    } else {
      tmp = number - t;
      c += tmp + sum;
    }
    sum = t;
  }
  return sum + c;
}

// Make extesion method for List<double>
extension Sum on Iterable<double> {
  /// Exact sum of a list of doubles
  double fsum() {
    return neumaierSum(this);
  }
}
