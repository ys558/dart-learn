/*
  1. implements:
    Dart中一个类实现多个接口：
    
  !!!extends抽象类 和 implements的区别：
  1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
  2、如果只是把抽象类当做标准的话我们就用implements实现抽象类

  2. mixins: 在类中混入其他功能。
    可以使用mixins实现类似多继承的功能


    因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2.x中使用mixins的条件：

      1、作为mixins的类只能继承自Object，不能继承其他类
      2、作为mixins的类不能有构造函数
      3、一个类可以mixins多个mixins类
      4、mixins绝不是继承，也不是接口，而是一种全新的特性
 */

// 1. implements: 一个类实现多个接口:
abstract class A { printA(); }
abstract class B { printB(); }
class C implements A, B {
  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

// 2. mixins:
class D { String info='this is D'; void printD(){ print('D'); }}
class E { void printE(){ print('E'); }}
class F with D, E {
}

// 3. mixins的函数,里面不能有构造函数, 解决mixsins的方法: extends 后再with, 如下例子:
class Person {
  String name;
  int age;
  // 构造函数:
  Person(this.name, this.age);
  void printInfo(){ print('${this.name}-${this.age}');}
}
class G { void printG(){print('G');} }
// P 继承自Person, 且混合G: 因Person中有构造函数Person(this.name, this.age); 故不能直接with
class P extends Person with G {
  P(String name, int age) : super(name, age);
}


void main(){
  // 1.
  C c = new C();
  c.printA();
  c.printB();

  
  // 2.
  F f = new F();
  f.printD();
  f.printE();
  print(f.info);

  // 3.
  P p = new P('呵呵',37);
  p.printInfo();
  p.printG();
}