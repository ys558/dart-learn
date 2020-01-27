class ReactangleArea {
  num height;
  num width;

  ReactangleArea(this.height, this.width);
  get area{
    return this.height* this.width;
  }

  set areaHeight(height){
    this.height = height;
  }

}

void main() {
  ReactangleArea r = new ReactangleArea(12.3, 3.45);
  print('面积:${r.area}');
  // 面积:42.435

  r.areaHeight = 6.34;
  print('面积:${r.area}');
  // 面积:21.873
}