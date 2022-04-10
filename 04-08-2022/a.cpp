#include <iostream>
using namespace std;

int main() {
  int size1, size2;
  cin >> size1;
  int a1[size1];
  for (int i = 0; i < size1; i++) cin >> a1[i];
  cin >> size2;
  int a2[size2];
  for (int i = 0; i < size2; i++) cin >> a2[i];
  int size3 = size1 + size2;
  int a3[size3];

  int i = 0, j = 0, k = 0;
  while (i < size1 && j < size2) {
    if (a1[i] < a2[j]) {
      a3[k] = a1[i];
      i++;
    } else {
      a3[k] = a2[j];
      j++;
    }
    k++;
  }
  while (i < size1) {
    a3[k] = a1[i];
    i++;
    k++;
  }
  while (j < size2) {
    a3[k] = a2[j];
    j++;
    k++;
  }

  // Print the result
  for (int i = 0; i < size3; i++) cout << a3[i] << " ";
  cout << endl;
}
