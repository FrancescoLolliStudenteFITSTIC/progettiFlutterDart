class Fibonacci {
  int count;
  List<int> fibonacci = [];


  Fibonacci({
    required this.count,
  });

  List<int> calc(){
    fibonacci = [];
    var n1 = 1;
    var n2 = 2;

    for (int i = 0; i < count; i++){
      fibonacci.add(n1 + n2);
      n1 = n2;
      n2 = fibonacci.last;
    }
    return fibonacci;
  }

}