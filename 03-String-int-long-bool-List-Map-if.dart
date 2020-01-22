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
  if (i==m ) {
    print('i=m');
  }else if( i !=m ){
    print('i!=m');
  }


  /**
   * List 列表
   */
  List l = ['aaa', 'bbb', 'ccc'];
  print(l.length);
  var l2 = new List();
  l2.add('zs');
  l2.add('ls');
  l2.add('ww');
  print(l2);
  // [zs, ls, ww]
  var l3 = new List<String>();
  l3.add('234');
  l3.add('hehe');
  print(l3);


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


  /**
   * is 关键字 判断类型：
   */
  if (str is String) {
    print('string类型');
  }else if(str is int) {
    print('int类型');
  }else{
    print('其他');
  }

}
