void main(List<String> args) {
  /// for 循环，和js差不多,且和if语句一样，只有一层循环时，{}可以去掉：
  /// 
  /// 例：打印1到9之间所有偶数：
  for (int i=1; i<=9; i++) {
    if (i%2 == 0) {
      print(i);
    }
  }

  List l = [1,2,3,4,5,6,7,8,9];
  for (int i in l) if(i%2 == 0) print(i);
  /// 
  List list =[
    {'title': 'hehe'},
    {'title': 'xxxx'},
    {'title': 'dddd'},
  ];
  for (var i=0; i<list.length; i++) print(list[i]['title']);

  /// 二维数组循环：
  List list2wei =[
    {'category': '国内',
      'content': [
        {'title': '国内1'},
        {'title': '国内2'},
        {'title': '国内3'},
      ]
    },
    {'category': '国外',
      'content': [
        {'title': 'xdsdf1'},
        {'title': 'sdfgws'},
        {'title': 'wrgrew'},
      ]
    },
  ];
  for (var i=0; i<list2wei.length; i++){ 
    print(list2wei[i]['category']);
    print('------------');
    for (var j=0; j<list2wei[i]['content'].length; j++)
      print(list2wei[i]['content'][j]['title']);
  }


  /// while do while
  int i =1;
  while(i<=5) {print(i); i++;} 


  /// break continue
  for (int i=19; i<=23; i++) {
    if(i==21) {continue;} 
    print(i);
    // 19
    // 20
    // 22
    // 23
  }
  for (int i=19; i<=23; i++) {
    if(i==21) {break;} 
    print(i);
    // 19
    // 20
  }

  const l2 = [2,3];
  l2.forEach((el) {
    print(el);
  });
  // 2
  // 3

  Map m = {'a':1, 'b':2};
  m.forEach((key, value) =>  print('$key --- $value'));

  // 或可写为 箭头函数 =>
  // m.forEach((key, value) =>  print('$key --- $value'));

  List l3 = [2,3,6,8];
  var ll = l3.where((item) => item >3);
  print(ll); // (6, 8)
  print(ll.toList()); // [6, 8]

  print(l3.any((item) => item >=3)); // true
  print(l3.every((item) => item % 2 == 0 || item % 3 == 0 )); // true
  l3.removeWhere((item) => item < 7 );
  print(l3); // [8]
  
  Set s2 = {2, 3, 4, 2, 8, 9, 8};
  bool ss = s2.any((item) => item < 1);
  print(ss); // false
  print(s2.where((item) => item > 3)); // (4, 8, 9)
  print(s2.every((item) => item <= 10)); // true
  
  
  Map m1 = {'a': 1, 'b': 2};
  m1.removeWhere((key, value) => key == 'a');
  print(m1); // {b: 2}
  
  l3.removeWhere((element) => element > 5);
  print(l3);

  
}