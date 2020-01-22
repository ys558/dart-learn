/**
 * 注释和js一样，还多了一种三斜杆///
 * */

void main(){
  print('hello world');

  /// 定义任意变量 var, 可以自动推断类型：
  /// 定义常量 惰性常量：final，普通常量：const，
  var str = 'hehe';
  print(str);
  final pi = 3.14159265;
  print(pi);
  const e = 2.14;
  print(e);
  /// final 和 const 两者区别，final惰性常量运行时才会初始化，const则没有这种特性：
  final timeNow = new DateTime.now();
  print(timeNow);
  // 2020-01-22 10:54:36.516049
  
  // 下面这种会报错
  // const tiemNowErrorWithConst = new DateTime.now();
  // print(tiemNowErrorWithConst);
  //  02-var.dart:20:33: Error: New expression is not a constant expression.
  //  const tiemNowErrorWithConst = new DateTime.now();
  print(timeNow);
  

  // 定义类型的变量：
  String str1 = '你好';
  print(str1);

  int num1 = 123;
  print(num1);
}
