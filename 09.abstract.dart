/*
Dart中抽象类: Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口

  1、抽象类通过abstract 关键字来定义
  2、Dart中没有方法体的方法我们称为抽象方法。
  3、如果子类继承抽象类必须得实现里面的抽象方法
  4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
  5、抽象类不能被实例化，只有继承它的子类可以

extends抽象类 和 implements的区别：
  1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
  2、如果只是把抽象类当做标准的话我们就用implements实现抽象类

案例：定义一个Pet 类要求它的子类必须包含eat方法

  多态:
  允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。
  子类的实例赋值给父类的引用。
  多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

*/

abstract class Pet {
  // 抽象方法
  eat();
  run();

  printInfo(){
    print('抽象类的普通方法');
  }
}

class Dog extends Pet {
  @override
  eat() {
    // TODO: implement eat
    print('小狗吃骨头');
  }

  @override
  run() {
    // TODO: implement run
    print('小狗在跑');
  }
}

class Cat extends Pet {
  @override
  eat() {
    // TODO: implement eat
    print('小猫吃老鼠');
  }

  @override
  run() {
    // TODO: implement run
    print('小猫在跑');
  }
  
}

main() {
  Dog d = new Dog();
  d.eat();
  d.run();
  d.printInfo();
}