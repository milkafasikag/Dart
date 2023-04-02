import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('Enter a command (add, remove, view, or exit):');
    String command = stdin.readLineSync()!.toLowerCase();

    if (command == 'add') {
      print('Enter a task:');
      String task = stdin.readLineSync()!;
      tasks.add(task);
    } else if (command == 'remove') {
      print('Enter the index of the task to remove:');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < tasks.length) {
        tasks.removeAt(index);
      } else {
        print('Invalid index!');
      }
    } else if (command == 'view') {
      print('Tasks:');
      for (int i = 0; i < tasks.length; i++) {
        print('$i. ${tasks[i]}');
      }
    } else if (command == 'exit') {
      break;
    } else {
      print('Invalid command!');
    }
  }
}
