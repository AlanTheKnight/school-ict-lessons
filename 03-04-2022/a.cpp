#include <iostream>
using namespace std;

int main() {
  int n;
  cin >> n;

  int a[n], positive[n], negative[n];
  for (int i = 0; i < n; i++) cin >> a[i];

  pair<int, int> count = {0, 0};

  for (int i = 0; i < n; i++) {
    if (a[i] > 0) {
      positive[count.first] = a[i];
      count.first++;
    } else if (a[i] < 0) {
      negative[count.second] = a[i];
      count.second++;
    }
  }

  if (count.first == 0)
    cout << "Положительных элементов нет" << endl;
  else {
    cout << "Положительные элементы: ";
    for (int i = 0; i < count.first; i++) cout << positive[i] << " ";
    cout << endl;
  }

  if (count.second == 0)
    cout << "Отрицательных элементов нет" << endl;
  else {
    cout << "Отрицательные элементы: ";
    for (int i = 0; i < count.second; i++) cout << negative[i] << " ";
    cout << endl;
  }
}
