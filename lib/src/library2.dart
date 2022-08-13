List removeDuplicates(List list) => list.toSet().toList();

int? factorial(int number) => number > 1
    ? number * factorial(number - 1)!
    : number < 0
        ? null
        : 1;

bool contain(List list, dynamic element) => list.contains(element);