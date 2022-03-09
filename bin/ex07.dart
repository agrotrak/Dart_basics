import 'dart:math';

extension MathSqrtn on num {
  num sqrtN(int n,{double eps=0.1}){
    if ((n%2==0&&this>0)||(n%2==1)) {
      num xn = 1;

      while ((this-pow(xn,n)).abs()>eps){
        xn=1/n*((n-1)*xn+this/pow(xn,n-1));
      }
      return xn;
    }
    throw ArgumentError("invalid eval sqrtN for this num");
  }
}

class Ex07 {
  static void example(){
    print("example 07");
    print(64.sqrtN(4));
  }
}