import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x,this.y,this.z);

  factory Point.StartPoint()=> Point(0,0,0);

  double distanceTo(Point p){
    return sqrt((p.x-x)*(p.x-x)+(p.y-y)*(p.y-y)+((p.z-z)*(p.z-z)));
  }
}

class Ex06 {
  static void example(){
    print("example 06");
    Point p1 = Point(1,1,1);
    print(p1.distanceTo(Point(2,2,2)));
  }
}