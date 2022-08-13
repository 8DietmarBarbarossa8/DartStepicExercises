List invertSequence(List list) => list.reversed.toList();

int countOfSymbol(List list, dynamic el) =>
    list.where((element) => element == el).length;