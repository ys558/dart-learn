class Pet{
  // 私有属性前加下划线,并且必须写在独立的文件里:
  String _name;
  int age;

  Pet(this._name, this.age);

  void printInfo() {
    // 类里可以直接访问私有属性_name, Pet外部则不能
    print('${this._name}====${this.age}');
  }

  // 私有方法_run
  void _run(){
    print('私有方法');
  }
  
  // 外部访问私有方法:
  execRun(){
    this._run();
  }
}