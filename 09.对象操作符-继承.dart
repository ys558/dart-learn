/*
  1. Dart中的对象操作符:
    ?     条件运算符 （了解）
    as    类型转换
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
    print('${this.name}---${this.age}');
  }
}

class Web extends Person {
  String gender;
  // 2.构造函数的继承:
  // 2. [String gender] 新加的子类属性避免和父类冲突,
  Web(String name, num age, [String gender]) : super(name, age){
    // 2. 属于该函数自由的构造函数写这里:
    this.gender = gender;
  }

  run(){
    print('${this.name}--${this.age}--${this.gender}');
  }

  // 3. 重写父类存在的方法: @override, 也可以省略
  @override
  void printInfo() {
    print('${this.gender}-${this.name}');
  }
  // 4. 
}

main(){
  Person p= new Person('zs', 34);
  // ?
  p?.printInfo();

  // as


  // is
  if (p is Person) {
    p.name = '李四';
  }
  p.printInfo();

  // as
  var p1;
  p1='';
  p1= new Person('lisi', 20);

  // p1.printInfo();
  // 这时,老版本dart会报错,因为不能判断p1的类型,现在的则可以
  // 老版本可以用as做以下转换:
  (p1 as Person).printInfo();

  // ..
  Person p2 = new Person('王五', 34);
  p1..name = '李四'
    ..age = 30
    ..printInfo();
  /**
   * 相当于下面操作的简写:
   * p1.name = '李四';
   * p1.age = 30;
   * p1.printInfo();
   */

  // extends 
  Web v=new Web('hehe', 13);
  v.printInfo();
  Web v1=new Web('子类里的实例化', 77, 'x');
  v1.run();
}