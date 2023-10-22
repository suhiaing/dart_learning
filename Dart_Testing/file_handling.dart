import 'dart:io';

void main() {
  append_at_the_beginning("Hi\n");
}

void append_at_the_beginning(String content) {
  File file = File('text.txt');
  if (file.existsSync()) {
    String ori_content = file.readAsStringSync();
    file.writeAsStringSync(content);
    file.writeAsStringSync(ori_content, mode: FileMode.append);
  } else {
    print("file doesn't exit\n");
  }
}
