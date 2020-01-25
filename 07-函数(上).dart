/*
  内置方法/函数：

      print();

  自定义方法：
      自定义方法的基本格式：

      返回类型  方法名称（参数1，参数2,...）{
        方法体
        return 返回值;
      }
*/

int getNum(){
  var num = 123;
  return num;
}

void printInfo(){
  print('自定义方法');

  var  n = getNum();
  print(n);
}

/// 例1. 定义一个方法 求1到这个数的所有数的和   如輸入60    則計算1+2+3+。。。+60的和
int sunNum(int n){
  var sum = 0;
  for (var i =1; i<=n; i++) {
    sum+=i;
  }
  return sum;
}

//例2、定义一个方法，打印用户信息
String printUserInfo (String username, int age) {
  print('$username, $age');
}

// 例3：定义一个带可选参数的方法, 用[]括起来, 如下:
String userInfo (String username, [int age]) {
  if (age != null) {
    print('$username, $age');
  }
  print('$username, 年龄保密');
}

// 例4: 默认参数:
String xxx (String username, [int age, String gender = 'male']) {
  if (age != null) {
    print('$username, $age, $gender');
  }else{
    print('$username, 年龄保密, $gender');
  }
}

// 例5: 命名参数:
String yyy (String username, {int age, String gender = 'male'}) {
  if (age != null) {
    print('$username, $age, $gender');
  }else{
    print('$username, 年龄保密, $gender');
  }
}

// 例子6: 把函数当做参数:
fn1(){
  print('fn1');
}
fn2(fn){
  fn();
}

void main() {
  // 函數寫在外面，在main()方法裏調用：
  printInfo();
  print(getNum);

  // 例1：
  var x = sunNum(10);
  print(x);

  // 例2:
  printUserInfo('hehe', 34);

  // 例3:
  userInfo('呵呵');

  // 例4:
  xxx('没名字', 23);

  // 例子5:
  yyy('张三', age:23, gender: 'female');

  // 例子6:
  fn2(fn1);
}




