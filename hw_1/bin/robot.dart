class Robot {
  String name;
  int age;
  bool power = false;

  // Named constructor with initializer list
  Robot({required this.name, required this.age});

  //Member function
  bool isOn(){
    return this.power;
  }
  
  void speak(){
    print('Hello, my name is ${this.name} and my age is ${this.age}!');
  }

}


