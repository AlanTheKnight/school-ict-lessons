#!/usr/bin/python3

# Задание: найти длину самой длинной последовательности из
# одинаковых чисел в массиве.

def solve(arr: list):
    m = 0
    i = 0
    while i < len(arr):
        cur = arr[i]
        j = i
        while i < len(arr) and arr[i] == cur:
            i += 1
        m = max(i - j, m)
    return m


if __name__ == '__main__':
    arr = list(map(int, input().split()))
    print(solve(arr))
