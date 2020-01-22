void main(List<String> args) {
  /// for 循环，和js差不多,且和if语句一样，只有一层循环时，{}可以去掉：
  /// 
  /// 例：打印1到9之间所有偶数：
  for (int i=1; i<=9; i++) if (i%2 == 0) print(i);
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
}