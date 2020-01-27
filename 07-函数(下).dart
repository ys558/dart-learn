/**
 * 箭头函数
 */

void main(List<String> args) {
  List l = ['apple', 'banana', 'watermelon'];
  l.forEach((value) => print(value));

  // 例子1: 小于5的数乘以3:
  List l2 = [1,2,3,4,5,6,7,8,3,2,13,9,3];
  var newlist = l2.map((value){
    if (value<5) return value*3;
    return value;
  });
  print(newlist.toList());

  var newlist2 = l2.map((value)=> value<5?value*3:value);
  print(newlist2.toList());


  ///例子3: 函数的嵌套:
  ///1. 定义一个方法isEvenNum判断一个数是否偶数;
  ///2. 定义一个方法,输入n,打印1到n内所有偶数;
  final isEvenNum = (int value) => (value%2 == 0) ? true : false;
  print(isEvenNum(0));
  
  printNum(int n) {
    for (var i=0; i<=n; i++){
      if (isEvenNum(i)) {
        print(i);
      };
    }
  }
  printNum(9);


  // 例子3: 匿名函数
  var x = (){
    print(123);
  };
  x();


  // 例子4: 只执行函数
  (()=> print('自执行函数'))();


  // 例子5: 函数的递归
  // var sum = 1;
  // fn(n) {
  //   sum*= n;
  //   // 规定跳出的循环:
  //   if(n==1) return;
  //   // 自身调用: 
  //   fn(n-1);
  // }
  // fn(23);
  // print(sum);

  // 递归求1~100的和:
  var sum = 0;
  f (n) {
    sum += n;
    if(n==1) return;
    f(n-1);
  }
  f (100);
  print(sum);

  /*
  闭包:
  1、全局变量特点:    全局变量常驻内存、全局变量污染全局
  2、局部变量的特点：  不常驻内存会被垃圾机制回收、不会污染全局
  */

  // 全局变量: 
  var b = 123;
  void xxx() {
    b ++;
    print(b);
  }
  // 污染全局:
  xxx(); // 124
  xxx(); // 125
  xxx(); // 126


  // 局部变量: 
  void xx(){
    var a = 123;
    a ++;
    print(a);
  };
  // 不污染全局:
  xx(); // 124
  xx(); // 124
  xx(); // 124

  /*
  闭包作用的体现:
  1.常驻内存        
  2.不污染全局   

    产生了闭包,闭包可以解决这个问题.....  

    闭包: 函数嵌套函数, 内部函数会调用外部函数的变量或参数, 变量或参数不会被系统回收(不会释放内存)

    闭包的写法： 函数嵌套函数，并return 里面的函数，这样就形成了闭包
   */

  ff () {
    var y = 11; // 不污染全局, 又实现常驻内存:
    // 闭包: 返回一个函数:
    return () {
      y++;
      print(y);
    };
  }

  var z = ff();
  z(); // 12
  z(); // 13
  z(); // 14

}