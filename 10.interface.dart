/**
 * 和Java一样，dart也有接口，但是和Java还是有区别的。

  首先，dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现。

  同样使用implements关键字进行实现。

  但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍。
  
  而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像Java接口那样的方式，一般会使用抽象类。

  建议使用抽象类定义接口
 */


// 定义一个DB库, 支持mysql, mssql, mongodb
abstract class Db {
  String uri=''; //数据库连接地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('这是mysql的add方法:${data}');
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
  
}

class MongoDB implements Db {
  @override
  String uri;

  MongoDB(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
  
}

main() {
  Mysql mysql = new Mysql('127.0.0.1');
  mysql.uri = '127.0.0.1';
  mysql.add('123123123');
}