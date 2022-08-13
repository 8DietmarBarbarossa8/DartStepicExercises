num maxOfThree(num a, num b, num c) => a > b && a > c
    ? a
    : b > c
        ? b
        : c;

num listSum(List list) => list.reduce((sum, element) => sum + element);

num listMult(List list) => list.reduce((mult, element) => mult * element);
