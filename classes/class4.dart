


// Space complexity: O(1)
// Time complexity: O(n)
void fibonacci(n) {
  int a = 0, b = 1;
  if (n <= 1) print(n);

  for(int i = 0; i <= n; i++) {
    int c = a + b;
    print(a); 
    a = b;
    b = c;
  }
}


int fib(n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

Map<int, int> memo = {};
int FiboMemo(int n) {
  if (n <= 1) return n;

  if (memo.containsKey(n)) {
    return memo[n]!;
  }

  memo[n] = FiboMemo(n - 1) + FiboMemo(n - 2);
  return memo[n]!;
}


void main() {
  final start = Stopwatch();
  start.start();
  // fibonacci(100);
  // for(int i = 0; i <= 10; i++) {
  //   print(fib(i));
  // }
  for(int i = 0; i <= 100; i++) {
    print(FiboMemo(i));
  }
  start.stop();
  print('Time taken: ${start.elapsedMilliseconds} ms');
}


