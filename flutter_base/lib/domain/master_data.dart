import 'constants.dart';

List<String> generateYears({int rangeYear = 100}) {
  final List<String> years = [];
  final year = DateTime.now().year;
  for (int i = 0; i < rangeYear; i++) {
    years.add((year - i).toString());
  }
  return years;
}

List<String> generateMonths() {
  final List<String> months = [];
  for (int i = 1; i < 13; i++) {
    months.add(i.toString());
  }
  return months;
}

List<String> generateDay() {
  final List<String> days = [];
  for (int i = 1; i < 32; i++) {
    days.add(i.toString());
  }
  return days;
}

List<String> getQuantityProductList(int maxValue) {
  final List<String> quantityProductList = [];
  for (int i = 1; i <= maxValue; i++) {
    quantityProductList.add(i.toString());
  }

  return quantityProductList;
}


List<String> generateYearFrom({int fromYear = minYearHistory}) {
  final List<String> years = [];
  final year = DateTime.now().year;
  if (year <= fromYear) {
    return ['$fromYear'];
  } else {
    for (int i = 0; i <= (year - fromYear); i++) {
      years.add('${year - i}');
    }
    return years;
  }
}
