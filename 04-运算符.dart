void main(List<String> args) {
  int a = 12;
  int b = 5;
  /**
   * 算术运算符
   * + - * / ~/ %
   * 
   * ~/ 取整
   */
  print(a~/b);
  // 2

  
  /**
   * 关系运算符, 不演示
   * == != < > <= >=
   */


  /**
   * 逻辑运算符 ! && ||
   */
  bool aa = true;
  bool bb = false;
  print(aa && bb);
  // false
  print(aa || bb);


  /**
   * 复制运算符 =  ??=
   * ??= 
   */
  /**如果b为空，则赋值为89；不为空，则用原值： */
  b??=89;
  print(b);
  // 5
  var c = 45;
  c ??= 8;
  print(c);
  // 45


  /**
   * 复合赋值运算 +=  -=  *=  /=  %=  ~/= 
   */


  /**
   * if else
   * 判断固定值：switch case
   */
  var gender = 'male';
  switch(gender){
    case 'male': 
      print('男');
      break;
    case 'female': 
      print('女');
      break;
    default:
      print('女');
      break;
  }


  /**
   * 三元表达式：和js一样，不演示
   */


  /**
   * ??运算符
   */
  var k;
  /**表示如果k不为空，则赋k的值给o, 如果为空，则赋p的值 */
  var p = 109;
  var o = k ?? p;
  print(o);
  // 109


  /**
   * Number和String的转换
   * Number转成String  toString()
   * String转成Number  parse()
   */
  String y = '123';
  var m = int.parse(y);
  print(m is int);
  // true

  String u = '23.345';
  /**多数情况下用double.parse()，因为其兼容int */
  var x = double.parse(u);
  print(x is double);
  // 23.345

  String price = '';
  try{
    var we = double.parse(price);
    print('价格为：$we');
  }catch(err){
    print('''
price 为空,报错如下：
$err''');
/// price 为空,报错如下：
/// FormatException: Invalid double
  } 


  /**
   * isEmpty isNotEmpty 判断字符串是否为空
   * isNaN 数值是否合法
   */
  var er = 'xxx';
  var xu = 0/0;
  if(er.isEmpty) print('str为空'); else print('str不为空');

  if(xu.isNaN){
    print('xu不合法');
  }else{
    print('heh');
  }
  
  /**
   * ++ -- 自增，自减
   */
  var zs = 10;
  var hu = zs++;
  print('$zs  $hu');
  // 11  10

  var xd = 10;
  var ui = ++xd;
  print('$xd  $ui');
  // 11  11

}