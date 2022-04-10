#include <iostream>
using namespace std;

int main() {
  int n, neg_cnt = 0, size = 0, j = 0;
  cin >> n;
  int x[n], res[n];

  for (int i = 0; i < n; i++) {
    cin >> x[i];
    if (x[i] < 0) neg_cnt++;
  }

  for (int i = 0; i < n; i++) {
    if (x[i] < 0) {
      res[size] = x[i];
      size++;
    } else {
      res[neg_cnt + j] = x[i];
      j++;
    }
  }

  for (int i = 0; i < n; i++) cout << res[i] << " ";
  cout << endl;
}