#include <algorithm>
#include <climits>
#include <iostream>
using namespace std;

/* Задание
Дан массив из чисел. Найти в нем min&max элементы
В порядке возрастания получить все числа из
интервала (min, max), которые не входят в массив.
*/

int main() {
  int n, mn = INT_MAX, mx = INT_MIN;
  cin >> n;

  int a[n];

  for (int i = 0; i < n; i++) {
    cin >> a[i];
    mn = min(mn, a[i]);
    mx = max(mx, a[i]);
  }

  int ans[mx - mn + 1];
  int count = 0;
  for (int i = mn + 1; i < mx; i++) {
    if (find(a, a + n, i) == a + n) {
      ans[count] = i;
      count++;
    }
  }

  if (count == 0)
    cout << "Нет не входящих элементов" << endl;
  else {
    cout << "Не входящие элементы: ";
    for (int i = 0; i < count; i++) cout << ans[i] << " ";
    cout << endl;
  }
}