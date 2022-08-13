int divideBy3And4(List<int> list) =>
    list.where((element) => element % 3 == 0 && element % 4 == 0).length;

num listAverage(List<num> list) => list.isNotEmpty
    ? list.reduce((value, element) => value + element) / list.length
    : 0;
