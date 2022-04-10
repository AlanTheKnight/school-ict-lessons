#include <iostream>
using namespace std;

int main() {
  int n, size = 0, x;
  cin >> n;
  int a[n];

  for (int i = 0; i < n; i++) {
    bool flag = false;
    cin >> x;
    for (int j = 0; j < size; j++) {
      if (a[j] == x) {
        flag = true;
        break;
      }
    }
    if (!flag) {
      a[size] = x;
      size++;
    }
  }

  for (int i = 0; i < size; i++) cout << a[i] << " ";
  cout << endl;
}