class WordSplitter {
  Map<String,int> calculateWords(List<String> words){
    Map<String,int> m={};
    for (String w in words){
      if (m[w]!=null){
        m[w]=m[w]!+1;
      }else{
        m[w]=1;
      }
    }
    return m;
  }
}

class Ex04 {
  static void example(){
    print("example 04");
    WordSplitter ws=WordSplitter();
    print(ws.calculateWords(["A","B","C","B","F","A"]));
  }
}