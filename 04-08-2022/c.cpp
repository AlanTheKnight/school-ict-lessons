#include <iostream>
using namespace std;

int main() {
  int n, cnt = 0;
  cin >> n;
  int a[n];
  for (int i = 0; i < n; i++) {
    cin >> a[i];
    if (a[i] == 0) cnt++;
  }

  int n2 = n - cnt, j = 0;
  int b[n2];
  for (int i = 0; i < n; i++) {
    if (a[i] != 0) {
      b[j] = a[i];
      j++;
    }
  }

  for (int i = 0; i < n2; i++) cout << b[i] << " ";
  cout << endl;
}