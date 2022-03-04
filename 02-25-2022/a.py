#!/usr/bin/python3

# Задача: поменять местами наибольший и
# наименьший элементы в массиве.

def solve(arr: list[int]):
    mn, mx = [arr[0], 0], [arr[0], 0]
    for i in range(0, len(arr)):
        if arr[i] < mn[0]:
            mn[0] = arr[i]
            mn[1] = i
        if arr[i] > mx[0]:
            mx[0] = arr[i]
            mx[1] = i
    arr[mn[1]], arr[mx[1]] = arr[mx[1]], arr[mn[1]]
    return arr


if __name__ == "__main__":
    arr = list(map(int, input().split()))
    print(*solve(arr))
