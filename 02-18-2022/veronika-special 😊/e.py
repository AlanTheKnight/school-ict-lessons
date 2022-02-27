#!/usr/bin/python3

# Задание: какие-то горки

def solve(arr: list, x: int):
    count = 0

    for i in range(1, len(arr) - 1):
        if arr[i] == x and arr[i - 1] < arr[i] and arr[i + 1] < arr[i]:
            count += 1

    return count


if __name__ == '__main__':
    arr = list(map(int, input().split()))
    x = int(input())
    print(solve(arr, x))
