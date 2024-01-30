import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  // DECLARE A LIST
  List toDoList = [];

  // REFERENCE THE HIVE BOX
  final _myBox = Hive.box('mybox');

  // WILL RUN IF FIRST TIME OPENING THE APP
  void createInitialData() {
    toDoList = [
      ["Do Homework", false],
      ["Take Vitamins", false],
    ];
  }

  // LOAD THE DATA FROM THE DATABASE
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // UPDATE THE DATABASE
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
