#!/usr/bin/python3

# Задача: вычислить сумму тех элементов массива x,
# индексы которых совпадают со значениями элементов
# массива a.

def solve(a: list[int], x: list[int]) -> int:
    s = 0
    for i in a:
        if 1 <= i <= len(x):
            s += x[i - 1]
    return s


if __name__ == "__main__":
    x = list(map(int, input().split()))
    a = list(map(int, input().split()))
    print(solve(a, x))
