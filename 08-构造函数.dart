// 类
class PersonX {
  // 属性:
  var name='张三';
  int age=23;

  // 方法:
  void getInfo() {
    print('${this.name}----${this.age}');
  }
  setInfo(int age) {
    this.age = age;
  }
}

// 构造函数:
class PersonY {
  String name;
  int age;

  // 构造函数: 在实例化时执行, 名字和类名一样的函数:
  // 且构造函数之前还能进行操作 :name='构造函数之前生成的name', age=999 .用的少
  PersonY(String name, int age): name='构造函数之前生成的name', age=999 {
    print('构造函数生成之前打印的内容:${this.name}--${this.age}');
    this.name=name;
    this.age=age;
  }
  


  getInfo() {
    print('${this.name}---${this.age}');
  }
}

// 构造函数的简写:
class PersonZ {
  String name;
  int age;

  PersonZ(this.name, this.age);

  PersonZ.named(this.name, this.age) {
    print('这是命名构造函数');
  }

  getInfo() {
    print('${this.name}---${this.age}');
  }
}


main(List<String> args) {
  // // 类的实例化:
  // PersonX p1 = new PersonX();

  // // 调用类的属性:
  // print(p1.name);
  // // 调用类的方法: 
  // p1.getInfo();

  // p1.setInfo(24);
  // p1.getInfo();


  // 类的构造函数:
  PersonY p2 = new PersonY('李四', 45);
  print(p2.name); 
  // 构造函数生成之前打印的内容:构造函数之前生成的name--999
  // 李四

  PersonZ pp = new PersonZ.named('xxxx', 12);
  print(pp.name); // xxxx
  print(pp.age); // 12


  // 构造函数简写:
  // PersonZ p4 = new PersonZ('hehe', 34);
  // p4.getInfo();

}