/*
  1. Dart中的对象操作符:
    as    类型转换 （已废弃）
    is    类型判断
    ..    级联操作 （连缀）  (记住)
  2. extends 及 构造函数继承
  3. 子类里重写父类的方法
  4. 子类里调用父类的方法
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print('父类的printInfo：${this.name}---${this.age}');
  }
}

class Web extends Person {
  String gender='m';
  Web(String name, num age, 
  // String gender 子类自己的属性： 
  String gender) : 
  // super 可用于继承父类的属性：
  super(name, age) {
    // 2. 属于该函数自由的构造函数写这里:
    this.gender = gender;
  }

  run(){
    // super 可用于继承父类的方法：
    super.printInfo();
    print('${this.name}--${this.age}--${this.gender}');
  }

  // 重写父类存在的方法: @override, 用于标示，可省略
  @override
  void printInfo() {
    print('子类重写的方法：${this.gender}-${this.name}');
  }
}

main(){
  Person p= new Person('zs', 34);

  // is
  if (p is Person) p.name = '李四';
  p.printInfo(); // 李四---34

  // as
  var p1;
  p1='';
  p1= new Person('lisi', 20);

  // p1.printInfo();
  // 这时,老版本dart会报错,因为不能判断p1的类型,现在的则可以
  // 老版本可以用as做以下转换:
  (p1 as Person).printInfo(); // lisi---20

  // // ..
  Person p2 = new Person('王五', 34);
  p1..name = '李四'
    ..age = 30
    ..printInfo(); // 李四---30
  /**
   * 相当于下面操作的简写:
   * p1.name = '李四';
   * p1.age = 30;
   * p1.printInfo();
   */

  // extends 
  Web v=new Web('hehe', 13, 'f');
  v.printInfo(); // 子类重写的方法：f-hehe
  Web v1=new Web('子类里的实例化', 77, 'x');
  v1.run(); 
  // 父类的printInfo：子类里的实例化---77
  // 子类里的实例化--77--x
}