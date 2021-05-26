/**
    List里面常用的属性和方法：

    常用属性：
      length          长度
      reversed        翻转
      isEmpty         是否为空
      isNotEmpty      是否不为空
    常用方法：  
      add         增加
      addAll      拼接数组
      indexOf     查找  传入具体值
      remove      删除  传入具体值
      removeAt    删除  传入索引值
      fillRange   修改   
      insert(index,value);            指定位置插入    
      insertAll(index,list)           指定位置插入List
      toList()    其他类型转换成List  
      join()      List转换成字符串
      split()     字符串转化成List
      forEach   
      map
      where
      any
      every

    //Set:
    //用它最主要的功能就是去除数组重复内容
    //Set是没有顺序且不能重复的集合，所以不能通过索引去获取值
    
    映射(Maps)是无序的键值对：
    常用属性：
        keys            获取所有的key值
        values          获取所有的value值
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法:
        remove(key)     删除指定key的数据
        addAll({...})   合并映射  给映射内增加属性
        containsValue   查看映射内的值  返回true/false
        forEach   
        where
        any
        every
 */

main() {
  List a = ['12', '23', '34'];
  print(a[1]);
  // 23

  a.add('45');
  print(a);
  // [12, 23, 34, 45]

  print(a.length);
  // 4

  print(a.isEmpty);
  print(a.isNotEmpty);
  // false
  // true
  
  print(a.reversed);
  // (45, 34, 23, 12)
  print(a.reversed.toList());
  // [45, 34, 23, 12]

  a.addAll(['67','89']);
  print(a);
  // [12, 23, 34, 45, 67, 89]

  print(a.indexOf('34'));
  // 2

  a.remove('89');
  print(a);
  // [12, 23, 34, 45, 67]
  a.removeAt(2);
  print(a);
  // [12, 23, 45, 67]

  a.fillRange(1, 3,'CC');
  print(a);
  // [12, CC, CC, 67]

  a.insert(2, 'zengjia');
  print(a);
  // [12, CC, zengjia, CC, 67]
  a.insertAll(3, ['hehe','haha']);
  print(a);
  // [12, CC, zengjia, hehe, haha, CC, 67]

  
  var b = a.join('-');
  print(b);
  // 12-CC-zengjia-hehe-haha-CC-67
  print(b is String);
  // true
  var c = b.split('-');
  print(c);
  // [12, CC, zengjia, hehe, haha, CC, 67]
  print(c is List);
  // true


  var s = new Set();
  s.add('xxx');
  s.add('xxx');
  s.add('yyy');
  print(s);
  // {xxx, yyy}
  print(s.toList());
  // [xxx, yyy]


  Map person = {
    'name': 'xxx', 'age': 20
  };
  print(person.keys.toList());
  // [name, age]
  print(person.isEmpty);
  // false
  print(person.containsValue(20));
  // true
  print(person.containsKey('age'));
  // true


  for (var i in a) print(i);
  // 12
  // CC
  // zengjia
  // hehe
  // haha
  // CC
  // 67

  // 遍歷Map：forEach
  person.forEach((key, value) => print('$key --- $value'));
  // name --- xxx
  // age --- 20

  List p =[11,22,33];
  var k = p.map((value) {
    return value*2;
  }).toList();
  print(k);
  // [22, 44, 66]

  var o = p.where((value) {
    return value<33;
  }).toList();
  print(o);
  // [11, 22]


  var q = p.any((value){
    return value<33;
  });
  print(q);
  // true
  var f = p.every((value){
    return value<33;
  });
  print(f);
  // false
  
  print(person.keys.toList());
  // [name, age]
  print(person.values.toList());
  // [xxx, 20]
  print(person.entries);
  // (MapEntry(name: xxx), MapEntry(age: 20))
}