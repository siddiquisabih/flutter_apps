class TaskModal {
  String name;
  bool isDone;

  TaskModal({required this.name, this.isDone = false});

  void toogleDone() {
    isDone = !isDone;
  }
  
}
