
class Ex01  {

  int getNod(int a,int b){
    int ra=a;
    int rb=b;
    int result=b,gcd;
    do{
      gcd=ra%rb;
      if (gcd!=0){
        ra=rb;
        rb=gcd;
        result=gcd;
      }
    }while(gcd!=0);
    return result;
  }

  int getNok(int a,int b){
    return (a*b/getNod(a, b)).round();
  }

  @override
  static void example() {
    print("example 01");
    Ex01 dc=Ex01();
    print(dc.getNod(126, 70));
    print(dc.getNok(126, 70));
  }

}