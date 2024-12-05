import 'robot.dart';

class SpyRobot extends Robot {
  Map<String, String> secrets = {};

  SpyRobot({required String name, required int age}) : super(name: name, age: age);

  bool saveSecret({required String codeWord, required String message}) {
    if (!secrets.containsKey(codeWord)) {
      secrets[codeWord] = message;
      return true;
    } else {
      return false;
    }
  }

  bool hasSecret(String codeWord) {
    return secrets.containsKey(codeWord);
  }

  bool removeSecret(String codeWord) {
    if (secrets.containsKey(codeWord)) {
      secrets.remove(codeWord);
      return true;
    } else {
      return false;
    }
  }

  @override
  void speak() {
    print('Hello, my name is ${this.name} and my age is ${this.age}! I am a spy robot!');
  }

  void sayAllSecrets() {
    if (secrets.isEmpty) {
      print("I don't have any secrets to say.");
    } else {
      secrets.forEach((codeWord, message) {
        print('The secret for $codeWord is $message');
      });
    }
  }
}