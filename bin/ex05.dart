
class Ex05 {
  List<int> findNumOrder(String str){
    List<String> words = str.split(",");
    Map<String,int> digits = {
      "zero":0,
      "one":1,
      "two":2,
      "three":3,
      "four":4,
      "five":5,
      "six":6,
      "seven":7,
      "eight":8,
      "nine":9
    };
    Set<String> finded=Set();
    List<int> result=[];
    for (var word in words){
      if (!finded.contains(word)){
        if (digits.containsKey(word)){
          result.add(digits[word]!);
          finded.add(word);
        }
      }
    }
    return result;
  }

  static void example(){
    print("example 05");
    Ex05 wc=Ex05();
    print(wc.findNumOrder("one,two,zero,zero,three,two"));
  }
}