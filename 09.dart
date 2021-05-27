class Person {
  String name;
  num age;

  Person(this.name, this.age );
  void printInfo() {
    print('${this.name}---${this.age}');
  }
}
main() {
  Person p= new Person('name', 12);
  p?.printInfo();

}