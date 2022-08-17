import 'dart:io';
import 'dart:convert';

class FileRead {
  static void read(String link) async {}
}

class TXT implements FileRead {
  @override
  static void read(String link) async {
    File file = File(link);
    var contents;

    if (!await file.exists()) {
      print("File doesn't exist!");
      return;
    }

    contents = await file.readAsString();
    print(contents);
  }
}

class JSON implements FileRead {
  @override
  static void read(String link) async {
    File file = File(link);

    if (!await file.exists()) {
      print("File doesn't exist!");
      return;
    }

    String input = await file.readAsString();
    print(input);
  }
}

class CSV implements FileRead {
  @override
  static void read(String link) async {
    File file = File(link);

    if (!await file.exists()) {
      print("File doesn't exist!");
      return;
    }

    try {
      var lines = await file.readAsLinesSync();
      for (var line in lines) {
        List info = line.split(';');
        String name = info[0];
        String surName = info[1];
        double mark = double.parse(info[2]);
        print('''

      Name: $name
      Surname: $surName
      Mark: $mark

      ''');
      }
    } catch (e) {
      print("Incorrect file filling!");
    }
  }
}
