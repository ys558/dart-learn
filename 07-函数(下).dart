/**
 * 箭头函数
 */

void main(List<String> args) {
  List l = ['apple', 'banana', 'watermelon'];
  l.forEach((value) => print(value));

  List l2 = [1,2,3,4,5,6,7,8];
  var newlist = l2.map((value){
    if (value<5) return value*3;
    return value;
  });
  print(newlist.toList());
}