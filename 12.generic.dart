/*
1. 泛型: 通俗理解：泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)
2. 泛型类: 
3. 泛型接口
  Dart中的泛型接口:
    实现数据缓存的功能：有文件缓存、内存缓存。内存缓存和文件缓存按照接口约束实现。
    1、定义一个泛型接口 约束实现它的子类必须有getByKey(key) 和 setByKey(key,value)
    2、要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致
*/


//只能返回string类型的数据
  // String getData(String value){
  //     return value;
  // }

//同时支持返回 string类型 和int类型  ！！！但造成代码冗余
  // String getData1(String value){
  //     return value;
  // }

  // int getData2(int value){
  //     return value;
  // }

// 同时返回 string类型 和number类型  ！！！不指定类型可以解决这个问题，但又放棄了類型檢查

// 1. 解决办法: 泛型
// 第一个T对返回return的类型进行校验, 如果不需要对返回类型进行校验, 第一个T可以省去:
T getData <T> (T value){
  return value;
}



// 2. 泛型类:
class PrintClass <T> {
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }
  void printInfo() {
    for(var i=0; i<this.list.length; i++) {
      print(this.list[i]);
    }
  }
}


// 3. 泛型接口
abstract class Cache <T> {
  getByKey(String key);
  void setByKey(String key, T value);
}
// 3.1 实现:
class FileCache <T> implements Cache <T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是文件缓存, 把key=${key} value=${value}的数据写入内存中');
  }
}

class MemoryCache <T> implements Cache <T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存, 把key=${key} value=${value}的数据写入内存中');
  }
  
}

void main() {
  // 
  print(getData <String> ('你好'));
  print(getData <int> (123));

  // 2. 泛型类: 
  // 2.1 List本身就是一种泛型类:
  List list = <String>[];
  // list.add(123);
  // 报错:
  // Unhandled exception:
  // type 'int' is not a subtype of type 'String' of 'value'

  // list.add('123');
  // print(list);

  // 2.2
  PrintClass p = new PrintClass <String> ();
  p.add('xxxxxxx');
  p.printInfo(); // xxxxxxx

  // 3. 泛型接口:
  MemoryCache m = new MemoryCache <String> ();
  m.setByKey('index', '123'); // 我是内存缓存, 把key=index value=123的数据写入内存中

  MemoryCache m1 = new MemoryCache <Map>();
  m1.setByKey('name', {'hehe': 456, 'haha': 678});
}