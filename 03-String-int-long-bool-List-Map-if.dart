/**
    项目中用不到的数据类型 （用不到）：
    Runes 
      Rune是UTF-32编码的字符串。它可以通过文字转换成符号表情或者代表特定的文字。

      main() {
        var clapping = '\u{1f44f}';
        print(clapping);
        print(clapping.codeUnits);
        print(clapping.runes.toList());
      
        Runes input = new Runes(
            '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
        print(new String.fromCharCodes(input));
      }
      
    Symbols
      Symbol对象表示在Dart程序中声明的运算符或标识符。您可能永远不需要使用符号，但它们对于按名称引用标识符的API非常有用，
      因为缩小会更改标识符名称而不会更改标识符符号。要获取标识符的符号，请使用符号文字，它只是＃后跟标识符：
      在 Dart 中符号用 # 开头来表示，入门阶段不需要了解这东西，可能永远也用不上。
      
      http://dart.goodev.org/guides/libraries/library-tour#dartmirrors---reflection
 
 */

void main(){
  /// 除了可以用var定义，还可以直接定义数据类型：
  /** 字符串String */
  String str = '1223';
  // 字符串模板：
  String str2 = '''
  line1: hehe
  line2: haha
  ''';
  // 字符串拼接：
  print('$str $str2');
  // 或者：
  print(str + str2);

  
  /**数值：
   * 整型：int
   * 浮点： double */
  int a = 111;
  double b =23.24;
  // double当整型用会存在.0
  double c = 45;
  print('$a   $b   $c');
  // 111   23.24   45.0

  /**
   * 布尔：bool
   */
  bool k = true;
  print(k);


  /**
   * 条件判断：if
   */
  var i= 123;
  var m = '123';
  // dart不会自动转换类型：
  // 注意：if语句和for语句 {} 可以去掉，如下写成一行：
  if (i==m ) print('i=m'); else if( i !=m ) print('i!=m');



  /**
   * List 列表
   */
  List l = ['aaa', 2, true];
  print(l.length);
  const l2 = ['vvv', 5];
  print('$l $l2');

  List l3 = <String>['foo', 'bar'];
  l3.add('fee');
  print(l3);

  List l4 = <double>[23, 44.11, 12.01];
  print(l4);

  List l5 = List<String>.filled(3, '');
  print(l5);

  /**
   * Maps 类似json对象
   */
  // key值必须加''或者""
  var p = {'name': 'zhangsan', 'age':20};
  print(p);
  // {name: zhangsan, age: 20}
  /* 只能用[]获取，不能用. : */ 
  print(p['age']);
  // 20
  p['age']=30;
  print(p);
  // {name: zhangsan, age: 30}

  var p2 = new Map();
  print(p2);

  /**
   * is 关键字 判断类型：
   */
  if (str is String) print('string类型');
  else if(str is int) print('int类型');
  else print('其他');
  

}
