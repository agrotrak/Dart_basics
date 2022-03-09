class Rimman {

  static double intergration(double start,double end,int count,double Function(double) func){
    if (end<start) throw Exception("Unavaible for end < start. Check parameters");
    if (count<=0) throw ArgumentError("count must be positive");

    var width = (end-start)/count;
    var current = start+width/2;
    var result=.0;
    while (current<end){
      result+=(func(current)*current).abs();
      current+=width;
    }
    return result;
  }
}

class Ex09 {
  static void example(){
    print("example 09");
    print(Rimman.intergration(-0.5, 1, 1000, (p0) => p0*2));
  }
}