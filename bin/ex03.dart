

class Ex03  {
  List<int> findNumsInStr(String str){
    List<int> result=[];
    List<String> words=str.split(" ");
    for (String w in words){
      int? i = int.tryParse(w);
      if (i!=null) {
        result.add(i);
      }
    }
    return result;
  }

  static void example(){
    print("example 03");
    Ex03 wc = Ex03();
    print(wc.findNumsInStr("ABC 12 KDHD 5 DJHD 4 5 6"));
  }
}