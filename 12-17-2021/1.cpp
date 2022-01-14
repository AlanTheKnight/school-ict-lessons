#include <bits/stdc++.h>
using namespace std;

long long ten_pow(int a)
{
    long long ans = 1;
    for (int i = 0; i < a; i++)
    {
        ans *= 10;
    }
    return ans;
}

int main(int argc, char const *argv[])
{
    int n;
    cin >> n;
    cout << 1 << ' ';
    for (size_t i = 1; i <= n; i++)
    {
        int num_length = ceil(log10(i));
        int tens = ten_pow(num_length);

        if ((i * i) % tens == i)
        {
            cout << i << ' ';
        }
    }
    cout << endl;
    return 0;
}
