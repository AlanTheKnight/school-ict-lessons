#!/usr/bin/python3

# Задача: заменить элементы, стоящие между наибольшим
# и наименьшим элементом в массиве на их квадраты.

def solve(arr: list[int]) -> list[int]:
    mn, mx = [arr[0], 0], [arr[0], 0]
    for i in range(0, len(arr)):
        if arr[i] < mn[0]:
            mn[0] = arr[i]
            mn[1] = i
        if arr[i] > mx[0]:
            mx[0] = arr[i]
            mx[1] = i
    for i in range(min(mn[1], mx[1]) + 1, max(mn[1], mx[1])):
        arr[i] = arr[i] * arr[i]
    return arr


if __name__ == "__main__":
    arr = list(map(int, input().split()))
    print(*solve(arr))
