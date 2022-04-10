#include <iostream>
using namespace std;

int main() {
  int n, cnt = 0;
  cin >> n;
  int a[n];
  for (int i = 0; i < n; i++) {
    cin >> a[i];
    if (a[i] < 0) cnt++;
  }

  int n2 = n + cnt;
  int a2[n2];
  for (int i = 0, j = 0; i < n; i++) {
    if (a[i] < 0) {
      a2[j] = a[i];
      a2[j + 1] = 888;
      j += 2;
    } else {
      a2[j] = a[i];
      j++;
    }
  }

  for (int i = 0; i < n2; i++) cout << a2[i] << " ";
  cout << endl;
}