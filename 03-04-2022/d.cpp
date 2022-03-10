#include <climits>
#include <iostream>
#include <map>
using namespace std;

int main() {
  int n;
  cin >> n;

  map<int, int> m;
  int most_frequent = 0;
  int a[n];

  for (int i = 0; i < n; i++) {
    cin >> a[i];
    m[a[i]]++;
    most_frequent = max(most_frequent, m[a[i]]);
  }

  pair<int, int> ans = {INT_MAX, 0};
  for (auto i : m) {
    if (i.second == most_frequent && i.first < ans.first)
      ans = make_pair(i.first, i.second);
  }

  cout << "Наиболее часто встречающийся элемент: " << ans.first << endl;
}