class ReactangleArea {
  num height;
  num width;

  ReactangleArea(this.height, this.width);
  get area{
    return this.height* this.width;
  }
  set areaHeight(height){
    this.height = height;
  }
}

class Person {
  /*
  Dart中的静态成员:
    1、使用static 关键字来实现类级别的变量和函数
    2、静态方法不能访问非静态成员，非静态方法可以访问静态成员
  */

  static String name='静态属性name';
  int age=18;
  static void show() {
    print('静态方法show');
  }

  /* 非静态方法可以访问静态成员及非静态成员 */ 
  void printInfo(){
    print(name); // 访问静态属性
    show(); // 访问静态方法, 
    print(this.age); // 访问非静态方法, 需用 this
  }

  static void printUserInfo() {
    print(name);
    show();
    // 以下错误!!!静态方法不能访问普通属性, 普通方法
    // printUserInfo(age); ×
    // this.printInfo(); ×
  }
}

void main() {
  ReactangleArea r = new ReactangleArea(12.3, 3.45);
  print('面积:${r.area}');
  // 面积:42.435

  r.areaHeight = 6.34;
  print('面积:${r.area}');
  // 面积:21.873

  // 访问静态属性和静态方法: 直接 类名.属性/方法 无需实例化
  print(Person.name);
  Person.show();

  // 访问普通属性和方法: 须要实例化:
  Person a = new Person();
  a.printInfo();

  Person.printUserInfo();
}