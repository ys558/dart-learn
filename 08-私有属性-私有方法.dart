// 1. 必须卸载独立的文件里,私有变量才生效:
import './08-私有属性/Pet.dart';

void main() {
  Pet a = new Pet('狗', 3);
  /*
  // print(a._name); 
  2. 报错,不能直接访问,_name为私有属性,须要定义方法访问
  */ 

  // 非私有属性,可以直接访问:
  print(a.age); // 3
  a.printInfo(); // 狗====3

  a.execRun(); //间接调用私有方法
}