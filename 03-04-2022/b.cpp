#include <iostream>
using namespace std;

/* Задание
В целочисленной последовательности есть нулевые элементы.
Создать массив из номеров этих элементов.
*/

int main() {
  int n;
  cin >> n;

  int a[n], zeros[n], count = 0;
  for (int i = 0; i < n; i++) cin >> a[i];

  for (int i = 0; i < n; i++) {
    if (a[i] == 0) {
      zeros[count] = i + 1;
      count++;
    }
  }

  if (count == 0)
    cout << "Нулевых элементов нет" << endl;
  else {
    cout << "Нулевые элементы: ";
    for (int i = 0; i < count; i++) cout << zeros[i] << " ";
    cout << endl;
  }
}