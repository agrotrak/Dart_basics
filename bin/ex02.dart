
import 'dart:math';


class Ex02   {
  // ignore: slash_for_doc_comments
  /**
   * Конвертация между разными числовыми системами
   */
  int _convertXtoY(int a,int sourceBase,int destinationBase){
    int result=0;
    for (int idx=0;idx<8;idx++){
      final d=(a%sourceBase);
      a=a~/10;
      assert(d>=0&&d<=1);
      if (d==1) result+=pow(destinationBase,idx).toInt();
    }
    return result;
  }


  int intToBinary(int a)=>_convertXtoY(a, 2, 10);


  int binaryToInt(int a)=>_convertXtoY(a, 10, 2);

  static void example(){
    print("example 02");
    Ex02 bc=Ex02();
    print(bc.binaryToInt(10000000));
    print(bc.binaryToInt(111));

  }
}