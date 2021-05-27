class Person {
  String name;
  int age;

  // 默认构造函数:
  Person(this.name, this.age);

  // 命名构造函数, 可以定义多个:
  Person.mingming(this.name, this.age){
    print('我是Person里的命名构造函数');
  }
  Person.setInfo(this.name, this.age){
    this.name = name;
    this.age = age;
  }

  void printInfo(){
    print('${this.name}--${this.age}');
  }
}

void main(List<String> args) {
  // 调用普通构造函数:
  Person p1 = new Person('haha', 45);
  print('${p1.name}=====${p1.age}');

  // 调用命名构造函数:
  Person p2 = new Person.mingming('yyy', 678);
    // 我是Person里的命名构造函数
  Person p3 = new Person.setInfo('uuuuu', 35);
  p3.printInfo();
    // uuuuu--35


}